---
name: Portion-aware meal analysis
overview: Replace gram-first clarifications with count×size portions, fix the analysis-sheet header/ingredient bugs, and tighten the proto contract so client and server share one source of truth for portion math. V2-only; no legacy back-compat.
todos:
  - id: proto-portion-fields
    content: "proto: add portion_kind/count/per_unit_grams/per_unit_min/per_unit_max/size_specified to PipelineDecomposedIngredient; add option_id+detail to PipelineClarificationOption; add clarification_id+portion_kind to PipelineClarification; switch MealClarificationAnswer to clarification_id+selected_option_id"
    status: completed
  - id: backend-decomposition-prompt
    content: "decomposition LLM: emit portion_kind, count (fractional ok), per_unit_grams + min/max, size_specified, split mixed-size foods into rows; normalize total grams = count × per_unit on wire output"
    status: completed
  - id: backend-portion-templates
    content: "backend/src/services/portionTemplates.ts: per-canonical-food size templates (roti, slice, cup, bowl, piece, pinch); fallback to LLM-emitted per_unit grams when no template"
    status: completed
  - id: backend-clarifications-redesign
    content: "generateClarifications: build per-ingredient option sets from portion_kind + templates; option.grams = total (count × selected per-unit); skip when size_specified or kcal swing < threshold; question copy includes count"
    status: completed
  - id: backend-count-question
    content: "when portion_kind=COUNT and count is null/low-confidence, emit a count clarification before the size clarification (same proto, portion_kind=COUNT_QUESTION)"
    status: completed
  - id: backend-clarification-matcher
    content: "applyClarificationAnswers: match by clarification_id + selected_option_id (no name normalization); recalculateIngredient stays; add sanity clamps for implausible count×size totals"
    status: completed
  - id: backend-mealname-propagation
    content: "propagate decomposition meal_name into PipelineIngredientsData/PipelineUncertaintyData/PipelineMealTypeQuestionData; feed it to presentation LLM as canonical title hint"
    status: completed
  - id: backend-tests
    content: "nutritionEngineV2.test.ts: count×size math, mixed-size split, missing count → count question, size_specified → no clarification, option.grams = count×per_unit invariant, gram-string regex blocked in labels, duplicate raw_name disambiguation"
    status: in_progress
  - id: flutter-header-title
    content: "meal_analysis_sheet: header swaps to mealName when present (AnimatedSwitcher, trim-checked); drop duplicate mealTitle from _emergingPreviewContent; remove hasMealName from inner KeyedSubtree key"
    status: completed
  - id: flutter-ingredient-accumulator
    content: "meal_analysis_sheet: ingredient list = decomposition names until INGREDIENTS arrives, then resolved names freeze for the run; survives empty UNCERTAINTY/MEAL_TYPE_QUESTION events; marquee preserves scroll on append"
    status: completed
  - id: flutter-clarification-flow
    content: "meal_question_flow_sheet: send clarification_id + selected_option_id; render question copy with count; support COUNT_QUESTION step before size question in the same sheet"
    status: pending
  - id: flutter-replay-seed
    content: "post-clarify replay reuses last seen mealName as seed for the new sheet (clarify path returns no DECOMPOSITION event)"
    status: completed
  - id: flutter-tests
    content: "widget test: pipeline event sequence with empty-ingredient frames does not collapse the list; header resolves to mealName then survives clarify replay"
    status: completed
  - id: backend-analytics-instrumentation
    content: "log decomposition_count_dropped warning when text mentions a number near a food noun but LLM emits count=null; log decomposition_implausible_count when sanity clamps trigger; emit count metric for clarification skip reasons (size_specified / pinch / sub-threshold)"
    status: completed
  - id: flutter-analytics-header
    content: "log mealAnalysisHeaderResolvedToName with phaseAtResolution (decomposition|ingredients|result|seed) when the header first becomes dynamic"
    status: completed
isProject: true
---

# Portion-aware meal analysis

## Goals

- User-facing copy never exposes raw grams. Sizes are stated in natural units (thin/regular/thick roti, small/regular/large bowl, 1/2/3 slices).
- Count × size is **explicit in the data model**: total grams used for macros = `count × per_unit_grams`. The multiplication cannot silently disappear during refactors.
- Clarifications match by stable IDs, not by ingredient name strings. Duplicate `raw_name` rows ("oil" twice) resolve correctly.
- Analysis sheet shows the meal name as the headline as soon as decomposition arrives, and the detected ingredient list never collapses mid-stream.
- V2 only. No legacy field carry-over, no V1 path.

## Non-goals

- Personalized portion memory (a user choosing "large roti" three times in a row is not auto-applied yet — separate follow-up).
- Changing USDA grounding logic; per-100g lookup stays as-is.
- Watch app and V1 endpoints; only V2 is touched in this plan.

## 1. Proto contract

`protos/calorify/meal_analysis_pipeline.proto`:

```proto
enum PortionKind {
  PORTION_KIND_UNSPECIFIED = 0;
  COUNT = 1;          // rotis, eggs, slices, pieces
  BULK = 2;           // sabzi, dal, rice, sauces
  PINCH = 3;          // salt, spices — no clarification
  COUNT_QUESTION = 4; // synthetic; used only on the wire for "How many?"
}

message PipelineDecomposedIngredient {
  string raw_name = 1;
  string canonical_hint = 2;

  // Total grams used for macro math. Server enforces:
  //   if portion_kind == COUNT: grams_estimated = count * per_unit_grams
  double grams_estimated = 3;
  double min_grams = 4;
  double max_grams = 5;

  string notes = 6;

  PortionKind portion_kind = 7;
  optional double count = 8;            // fractional ok; null if not extracted
  optional double per_unit_grams = 9;
  optional double per_unit_min_grams = 10;
  optional double per_unit_max_grams = 11;
  bool size_specified_by_user = 12;
}

message PipelineClarificationOption {
  string option_id = 1;       // stable; matcher key
  string label = 2;           // user-facing, no grams
  optional string detail = 3; // optional fine print, e.g. "≈ 35g each"
  double grams = 4;           // total grams this option resolves to
  int32 calorie_delta = 5;
}

message PipelineClarification {
  string clarification_id = 1;   // stable; matcher key
  string ingredient_name = 2;    // display only
  PortionKind portion_kind = 3;  // drives icon / copy variant
  string question = 4;
  repeated PipelineClarificationOption options = 5;
  string default_option_id = 6;
}

message MealClarificationAnswer {
  string clarification_id = 1;
  string selected_option_id = 2;
}
```

Removed: `ingredientName` and `selectedOptionIndex` on `MealClarificationAnswer`; `default_option_index` on `PipelineClarification`. Run `./scripts/generate_protos.sh` after editing.

## 2. Decomposition LLM

`backend/src/services/nutritionEngineV2.ts` `DECOMPOSITION_SYSTEM_PROMPT` + `DECOMPOSITION_SCHEMA`:

- Add explicit instructions:
  - "Set `portion_kind` to COUNT for foods that come in discrete units (roti, slice, egg, piece, samosa). Set BULK for spoon/cup/bowl foods (rice, dal, sabzi, sauces). Set PINCH for trace amounts (salt, spices, garnishes)."
  - "For COUNT, always emit `count` (fractional allowed: 0.5 = half) and `per_unit_grams` + `per_unit_min_grams` + `per_unit_max_grams`. Read counts directly from the user's text when possible; otherwise infer a typical count for the meal context and mark `count` low-confidence by setting min/max wider."
  - "If the user states the size of a unit ('4 large rotis'), set `size_specified_by_user = true` and collapse `per_unit_min/grams/max` to that single size."
  - "If the user mentions different sizes within the same food ('2 small + 2 large rotis'), emit two ingredient rows."
- Schema: add the new fields, all optional except `portion_kind`.
- Post-LLM normalization in `toDecompositionWire`: when `portion_kind === COUNT`, recompute `grams_estimated`, `min_grams`, `max_grams` from `count × per_unit_*`. Single source of truth.
- Sanity guard: reject rows where `count > 20` or `count × per_unit_max_grams > 2000g`; collapse to a single BULK row with a logged `decomposition_implausible_count` warning.

## 3. Portion templates

New file `backend/src/services/portionTemplates.ts`. Keyed off canonical hint (with a small synonym map):

```ts
type PortionTemplate = {
  kind: PortionKind;
  options: { id: string; label: string; perUnitGrams: number }[];
};

const TEMPLATES: Record<string, PortionTemplate> = {
  roti:  { kind: COUNT, options: [
    { id: 'thin',    label: 'Thin',    perUnitGrams: 25 },
    { id: 'regular', label: 'Regular', perUnitGrams: 35 },
    { id: 'thick',   label: 'Thick',   perUnitGrams: 45 },
  ]},
  rice_cooked:  { kind: BULK, options: [
    { id: 'small',   label: 'Small bowl',   perUnitGrams: 150 },
    { id: 'regular', label: 'Regular bowl', perUnitGrams: 200 },
    { id: 'large',   label: 'Large bowl',   perUnitGrams: 280 },
  ]},
  // … bread slice, egg, banana, paneer cube, dal, curry/sabzi, milk cup, oil tbsp, etc.
};
```

Fallback when no template matches: synthesize three options from the LLM's `per_unit_min_grams / per_unit_grams / per_unit_max_grams` (COUNT) or `min_grams / grams_estimated / max_grams` (BULK) using gram-free copy ("smaller / typical / larger"). PINCH never produces a clarification.

## 4. `generateClarifications` redesign

```ts
function generateClarifications(resolved: ResolvedIngredient[]): ClarificationDTO[] {
  const out: ClarificationDTO[] = [];
  for (const ing of resolved) {
    if (ing.portionKind === 'PINCH') continue;
    if (ing.sizeSpecifiedByUser) continue;

    const calorieSwing = ing.maxMacros.calories - ing.minMacros.calories;
    if (calorieSwing < 50) continue;

    // 4a. Missing count → ask count first.
    if (ing.portionKind === 'COUNT' && ing.count == null) {
      out.push(buildCountQuestion(ing));   // portion_kind = COUNT_QUESTION
      continue;
    }

    // 4b. Size question, with count baked into option.grams.
    const tpl = lookupTemplate(ing.canonicalHint) ?? fallbackTemplate(ing);
    const count = ing.portionKind === 'COUNT' ? (ing.count ?? 1) : 1;

    out.push({
      clarification_id: `clr_${ing.rowId}`,
      ingredient_name: ing.displayName,
      portion_kind: ing.portionKind,
      question: buildQuestion(ing, count),  // "How big were each of your 4 rotis?"
      options: tpl.options.map((opt) => {
        const totalGrams = count * opt.perUnitGrams;
        return {
          option_id: opt.id,
          label: opt.label,
          detail: ing.portionKind === 'COUNT'
            ? `≈ ${Math.round(opt.perUnitGrams)}g each`
            : undefined,
          grams: totalGrams,
          calorie_delta: Math.round(
            scaleMacros(ing.macros, ing.grams, totalGrams).calories - ing.macros.calories
          ),
        };
      }),
      default_option_id: tpl.options[1]?.id ?? tpl.options[0].id,
    });
  }
  return out;
}
```

Key invariant under test: `option.grams === count × opt.perUnitGrams` for COUNT ingredients. **One assertion that prevents the multiplication from silently disappearing.**

The `< 50 kcal swing` skip is replaced with: `swing < max(50, 0.05 × mealTotalKcal)` — so a 30 kcal swing on a 200 kcal snack is skipped, but a 100 kcal swing on a 2000 kcal meal isn't.

## 5. Count question flow

When the LLM emits `portion_kind=COUNT` with `count=null`, the first clarification for that row is a count question:

```
clarification_id: "clr_<rowId>_count"
ingredient_name: "Roti"
portion_kind: COUNT_QUESTION
question: "How many rotis?"
options: [
  {option_id:"1", label:"1", grams: 1×perUnitMid},
  {option_id:"2", label:"2", grams: 2×perUnitMid},
  {option_id:"3", label:"3", grams: 3×perUnitMid},
  {option_id:"4", label:"4", grams: 4×perUnitMid},
  {option_id:"5", label:"5", grams: 5×perUnitMid},
  {option_id:"6plus", label:"6 or more", grams: 7×perUnitMid},
]
default_option_id: "2"
```

`applyClarificationAnswers` for a COUNT_QUESTION simply records the answer's `grams` as the new total (and persists the chosen count on the ingredient row so a follow-up size question can use it). Whether to *also* ask the size question afterwards is decided by re-running `analyzeUncertainty` post-answer — if calorie swing drops below the threshold, skip; else emit a size clarification on the next pipeline turn.

This means a clarify round-trip can include up to two questions per count ingredient (count, then size). The existing `MealQuestionFlowSheet` already iterates over `_pipelineSteps`, so this is just more steps in the same sheet — no new screens.

## 6. Clarification matcher

`applyClarificationAnswers`:

```ts
function applyClarificationAnswers(
  resolved: ResolvedIngredient[],
  clarifications: ClarificationDTO[],
  answers: MealClarificationAnswer[],
): ResolvedIngredient[] {
  const clarById = new Map(clarifications.map((c) => [c.clarification_id, c]));
  const rowIdToIngredient = new Map(resolved.map((r) => [r.rowId, r]));

  for (const answer of answers) {
    const clr = clarById.get(answer.clarification_id);
    if (!clr) continue;
    const opt = clr.options.find((o) => o.option_id === answer.selected_option_id)
             ?? clr.options.find((o) => o.option_id === clr.default_option_id);
    if (!opt) continue;
    const ing = rowIdToIngredient.get(clr.row_id);
    if (!ing) continue;
    rowIdToIngredient.set(clr.row_id, recalculateIngredient(ing, opt.grams));
  }
  return [...rowIdToIngredient.values()];
}
```

Each `ResolvedIngredient` carries a stable `rowId` assigned during decomposition (`crypto.randomUUID()` once per row, persisted in the session). Duplicate `raw_name` rows now disambiguate cleanly — "oil" appearing twice produces two separate clarifications with two `clarification_id`s tied to two `row_id`s.

## 7. `meal_name` propagation

`PipelineIngredientsData`, `PipelineUncertaintyData`, and `PipelineMealTypeQuestionData` each get an optional `meal_name` field. The pipeline writes the decomposition's `meal_name` into all subsequent events. Two payoffs:

1. The Flutter header keeps showing the meal name across `INGREDIENTS → UNCERTAINTY → MEAL_TYPE_QUESTION`.
2. After clarify replay (where `runPipelineFromDecomposition` runs with `emitDecomposition: false`), the very first event the new sheet sees still carries `meal_name` — so the header is correct from frame 1, no static-title flash.

Presentation LLM prompt change (`enrichPresentationFromText` / `enrichPresentationFromImage`): pass the decomposition `meal_name` as a strong hint — "Use `<X>` as the meal name unless you have specific evidence to refine it." Removes the drift between the early header name and the final receipt name.

## 8. Flutter — analysis sheet

`app/lib/features/home/widgets/bottom_sheet/meal_analysis_sheet.dart`:

- Wrap the title `Text(t.meal.analysis.title, …)` in an `AnimatedSwitcher` keyed by the trimmed `mealName`. When non-empty, show `mealName`; otherwise show the static title. `maxLines: 2`, ellipsis.
- `_emergingPreviewContent`: drop the inner `mealTitle` block entirely. The header is now the single place the meal name appears.
- Remove `hasMealName` from the inner `KeyedSubtree`'s key (line 614) — only `ingredientCount|ingredientNames` should drive the inner fade.
- Trim-consistent predicate: `final hasHeaderMealName = (mealName ?? '').trim().isNotEmpty;`. Use the same expression at the title and (now removed) preview check.

Ingredient accumulator state machine on `_MealAnalysisPipelineSheetState`:

```
enum _IngredientStage { none, decomposition, resolved }

_IngredientStage _stage = .none;
List<String> _names = [];

on event:
  if event has resolved ingredients (INGREDIENTS or RESULT):
    _stage = .resolved
    _names = resolved names                  // replace, not union
  else if _stage == .none && event has decomposition ingredients:
    _stage = .decomposition
    _names = decomposition names
  // UNCERTAINTY / MEAL_TYPE_QUESTION events with no ingredients: leave _names alone
```

Pass `_names` (instead of `_detectedIngredientNames(_lastEvent)`) into `_emergingPreviewContent`. List never collapses; replacement only happens once when decomposition labels are upgraded to resolved labels.

`_IngredientNamesSlowScrollList.didUpdateWidget`: only `jumpTo(0)` and restart the marquee when the new names list is **shorter** or differs in the prefix. On pure append (resolved labels are typically a relabeling, but if append happens it's still benign), keep current scroll position.

Replay seed: `_MealAnalysisPipelineSheet` constructor takes an optional `seedMealName`. `resolveV2MealAnalysisFlow` captures the last `mealName` it saw on the previous sheet's outcome (a new `lastMealName` field on `_MealAnalysisFlowOutcome`) and passes it into the next sheet. Header reads `seedMealName` until the first event with a non-empty `mealName` arrives.

## 9. Flutter — clarification sheet

`app/lib/features/home/widgets/bottom_sheet/meal_question_flow_sheet.dart`:

- `_pipelineAnswers`: build `MealClarificationAnswer(clarificationId: step.clarificationId, selectedOptionId: step.options[index].optionId)`. No more name normalization.
- `MealQuestionFlowUiStep`: carry `clarificationId`, `optionIds`, plus the existing `question` + `optionLabels`. Optionally render `option.detail` as small print under each option label.
- COUNT_QUESTION step renders identically (it's just another clarification with different options/copy).
- If a single clarify round produces both a count question and a size question for the same ingredient, they appear as consecutive steps in the same flow sheet — already supported by the loop.

## 10. Edge cases & gotchas

These are the subtle failure modes that surfaced while designing the flow. Each has either a guard in the sections above or a test in §11; this section is the reasoning record so future edits don't regress them.

### Decomposition / portion math

- **Whitespace-only `meal_name`.** LLM can return `""` or `"   "` even though the field is required. Backend trims before emitting; Flutter checks `(mealName ?? '').trim().isNotEmpty` everywhere. Never render a literal blank header line.
- **Drift between decomposition `meal_name` and presentation `meal_name`.** Today these are produced by two separate LLM calls and can disagree ("Paneer Butter Masala" vs "Paneer Curry"), causing the early header to mutate at the receipt stage. Fixed by feeding the decomposition `meal_name` into the presentation prompt as a strong hint (§7). The presentation LLM may only override on specific evidence.
- **`grams_estimated` cannot be a separate source of truth from `count × per_unit_grams`.** If the two ever disagree, calorie math diverges between the loading sheet (uses totals) and the receipt (uses macros derived from totals). The wire-layer normalization in `toDecompositionWire` is the single enforcement point: when `portion_kind === COUNT`, the totals are *recomputed* from count and per-unit, not trusted from the LLM output.
- **Variance amplified by count, intentionally.** A 1-roti meal at ±10g per unit has a 10g range; a 10-roti meal at the same per-unit uncertainty has a 100g range. `analyzeUncertainty` operates on totals so this falls out for free — but it also means the `< max(50, 0.05 × mealTotalKcal)` skip threshold has to be percent-of-meal aware (which it now is), or every count meal would clarify.
- **PINCH ingredients (salt, spices) never clarify.** They're in the decomposition for completeness — they contribute to ingredient-list display and to USDA grounding for sodium estimates — but a "how much salt?" question is noise. Skip in `generateClarifications`.
- **Sanity clamps.** `count > 20` or `count × per_unit_max_grams > 2000g` for a single row → collapse to a single BULK row, log `decomposition_implausible_count`. Without this guard, a hallucinated `count: 40` silently inflates the meal to 6,000+ kcal with no visible signal.
- **Fractional counts.** "Half a roti" → `count: 0.5`. The proto field is `double`, not `int32`. Rounding to int loses the food entirely.
- **Mixed sizes within one food.** "2 small + 2 large rotis" must produce two ingredient rows, not one row with averaged per-unit grams. Decomposition prompt enforces; tests verify.

### Clarification matching

- **Duplicate `raw_name` rows.** "Oil" can appear twice (sabzi tempering + roti brushing). Matching by name normalization (today's behavior) collapses both into one answer. The `clarification_id` + `option_id` + `row_id` triplet (§6) eliminates this entirely. Tested explicitly.
- **Calorie-delta math under template buckets.** When option grams come from a template (not the LLM's per-unit range), `calorie_delta` must be derived as `scaleMacros(perIngredientMacros, ing.grams, totalGrams).calories - ing.macros.calories` against per-100g, not interpolated between min/max macros. Tested.
- **Count question + size question may both be needed for the same ingredient in one clarify round.** The flow runs `analyzeUncertainty` after the count answer; the size question is only emitted on the next clarify turn if the swing is still above threshold. Both render as consecutive steps in the same Flutter sheet; no new screens.
- **Re-running uncertainty after `applyClarificationAnswers`.** Today `clarifications = []` is hard-coded after applying answers. With the count-then-size flow, this becomes wrong: post-count, we may still need a size clarification. The matcher returns updated `resolved`, then `analyzeUncertainty` reruns, and `generateClarifications` is allowed to emit a new (smaller) round. Sheet UX handles this because the clarify path already loops.

### Pipeline event semantics

- **Clarify replay does not emit `DECOMPOSITION` (`emitDecomposition: false`).** New sheet's first event is `INGREDIENTS`, which carried no `meal_name` in the old proto. Two compatible fixes layered: (a) the `seedMealName` constructor arg on `_MealAnalysisPipelineSheet` so the header is correct from frame 1, (b) `meal_name` propagated into `INGREDIENTS`/`UNCERTAINTY`/`MEAL_TYPE_QUESTION` so even cold reloads work. Both are cheap; both ship.
- **Empty-ingredient frames in mid-stream.** `UNCERTAINTY`, `MEAL_TYPE_QUESTION`, and post-clarify replay frames can carry no ingredients. The Flutter accumulator (§8) is a strict three-state machine (`none → decomposition → resolved`) that never empties on a missing payload. Tested.
- **Stage replacement is once-only.** Decomposition labels are placeholders ("atta") and resolved labels are canonical ("Wheat flour, whole-grain"). When `INGREDIENTS` arrives it *replaces* the list (not unions) — otherwise you see both. After that point, the list is frozen until the sheet closes; subsequent identical `INGREDIENTS` frames don't restart the marquee.

### Flutter UI

- **Title height shift on header swap.** A 2-line dynamic `mealName` is taller than the 1-line "Analyzing your meal". Loader/progress positions move. Mitigated by `maxLines: 2` on the title and the same 320ms `AnimatedSwitcher` curve used elsewhere — the layout settles within one frame.
- **`mealName` is intentionally not localized.** It comes from the LLM in the user's input language, served by `getFoodAnalysisSystemPrompt(locale, countryCode)`. Don't wrap it in `t.…`. Static fallback `t.meal.analysis.title` is the only localized path.
- **Inner `KeyedSubtree` key cleanup.** Once the inner duplicate title is removed, `hasMealName` should not appear in the inner key (was line 614 in the current file) — otherwise the ingredient block fades unnecessarily when only the meal name resolves.
- **Marquee restart on append is jarring.** `_IngredientNamesSlowScrollList.didUpdateWidget` only resets on prefix change or shrink; pure append keeps scroll position. With the replace-not-union accumulator (§8), append is rare anyway, but the guard prevents the visual stutter that today's `listEquals → jumpTo(0)` causes when names tick in across events.
- **Android sheet height re-layout.** `BaseBottomSheet` is `MainAxisSize.min`; removing the inner duplicate title shrinks the sheet by ~22–28 px. Verify on a real device — historically the keyboard insets handling for shrinking bottom sheets has been twitchy on Android. No code change planned, but flagged for QA.

### Diagnostics

- **`decomposition_count_dropped` log line.** When the text input contains a numeric token within ~3 words of a food noun but `count` comes back null, log a warning. Lets us measure how often the LLM silently loses the count before we try to fix it.
- **Clarification skip reasons.** Emit a counter for each skip path (`pinch`, `size_specified`, `sub_threshold`, `no_template_fallback_used`) in `generateClarifications`. Without this we cannot distinguish "users never see clarifications because the model is great" from "users never see clarifications because they all hit the size_specified branch by accident".

## 11. Worked example: "paneer sabzi with 4 roti"

Input text → decomposition LLM emits:

```json
{
  "meal_name": "Paneer sabzi with roti",
  "ingredients": [
    {
      "raw_name": "paneer sabzi",
      "canonical_hint": "paneer curry",
      "portion_kind": "BULK",
      "count": null,
      "grams_estimated": 250, "min_grams": 200, "max_grams": 300,
      "size_specified_by_user": false
    },
    {
      "raw_name": "roti",
      "canonical_hint": "roti",
      "portion_kind": "COUNT",
      "count": 4,
      "per_unit_grams": 35, "per_unit_min_grams": 25, "per_unit_max_grams": 45,
      "grams_estimated": 140, "min_grams": 100, "max_grams": 180,
      "size_specified_by_user": false
    }
  ]
}
```

Wire normalization confirms `140 = 4 × 35`, `100 = 4 × 25`, `180 = 4 × 45`. USDA resolution attaches per-100g macros to each row. `analyzeUncertainty` totals: paneer kcal swing ~120, roti kcal swing ~200 (4× per-unit swing). Both > threshold → both clarify.

Generated clarifications:

```
clr_<row1>:  "How much paneer sabzi?"
  options: [Small bowl (200g), Regular bowl (250g), Large bowl (300g)]
  default_option_id: "regular"

clr_<row2>:  "How big were each of your 4 rotis?"
  options:
    [Thin    label="Thin",    detail="≈ 25g each", grams=100],
    [Regular label="Regular", detail="≈ 35g each", grams=140],
    [Thick   label="Thick",   detail="≈ 45g each", grams=180]
  default_option_id: "regular"
```

User picks "Regular bowl" + "Thick". Answers: `[(clr_<row1>, "regular"), (clr_<row2>, "thick")]`. Matcher resolves rows to 250g paneer, 180g roti. `recalculateIngredient` rescales each ingredient's macros from per-100g via `scaleMacros`. Pipeline re-runs `analyzeUncertainty` — swing collapses, no further clarification. Presentation LLM runs once with the chosen totals.

Counter-example, same input phrased as "I had some rotis":

- Decomposition emits `count: null`, `portion_kind: COUNT`.
- First clarify round emits `COUNT_QUESTION` ("How many rotis?", options 1/2/3/4/5/6+).
- User picks "4". Matcher records count=4 on the row, totals become `4 × per_unit_mid_grams`. Variance still > threshold.
- Second clarify round emits the size question (same as above).

Both questions appear as consecutive steps in the same `MealQuestionFlowSheet` — no extra UI.

Counter-example, "4 large rotis":

- Decomposition emits `count: 4`, `per_unit_grams: 45`, `per_unit_min/max: 45`, `size_specified_by_user: true`.
- `generateClarifications` short-circuits on `size_specified_by_user`. No question shown for roti.
- Paneer may still clarify on its own.

## 12. Tests

Backend (`backend/src/services/nutritionEngineV2.test.ts`):

- `count × per_unit invariant`: `option.grams === count × per_unit` for every COUNT clarification option. **Single most important test.**
- `4 roti, regular size → resolved total = 4 × 35g`.
- `"4 large rotis" → size_specified=true → no clarification emitted`.
- `"rotis" with no count → COUNT_QUESTION emitted before size question`.
- `mixed sizes split into two rows` (decomposition fixture).
- `fractional count (0.5) preserved through pipeline`.
- `implausible count (count=40) clamps and falls back to BULK row`.
- `duplicate raw_name ("oil" twice) → two clarifications with distinct ids → two answers resolved independently`.
- `clarification labels never contain /\b\d+\s*g\b/` regex assertion across all generated options.
- `presentation meal_name aligns with decomposition meal_name when no override evidence`.

Flutter (`app/test/features/home/widgets/meal_analysis_sheet_test.dart`):

- Widget test driving a fake `Stream<MealAnalysisPipelineEvent>`:
  - `STARTED → DECOMPOSITION(names=[a,b,c]) → INGREDIENTS(names=[A,B,C]) → UNCERTAINTY(empty) → RESULT`: ingredient list goes `[a,b,c] → [A,B,C] → [A,B,C] → (sheet closes)`. List never empties.
  - `DECOMPOSITION(mealName="Paneer with roti")`: header text reads "Paneer with roti", static title not visible.
  - Replay path: outcome `lastMealName="Paneer with roti"` → next sheet's first event is `INGREDIENTS` with no `mealName` → header still shows "Paneer with roti" via seed.

Additional backend assertions worth pinning:

- `count question then size question` — feed `count: null` through a full clarify round; assert two clarifications emitted in order, count first, size second.
- `re-running uncertainty after applyClarificationAnswers` — apply a count answer, assert `analyzeUncertainty` re-runs and `generateClarifications` produces the size clarification.
- `presentation meal_name override only on evidence` — if decomposition `meal_name="Paneer sabzi"` and presentation prompt has no contradicting input, presentation's `meal_name` matches (or is a strict superset of) the decomposition value.
- `whitespace-only meal_name treated as missing` — wire layer trims; downstream sees `""` and falls back to static title.
- `clarification skip-reason counters` — fixture covering all four skip paths (pinch / size_specified / sub_threshold / no_template_fallback_used) increments the right counters.

Additional Flutter assertions:

- `header swap fires analytics once` — `mealAnalysisHeaderResolvedToName` logged exactly once per sheet lifecycle, with the correct `phaseAtResolution`.
- `marquee preserves scroll on append` — drive a stream that adds names mid-marquee; assert scroll position is not jumped to 0.
- `count question + size question render in one sheet` — fake `[(COUNT_QUESTION, …), (SIZE, …)]` clarification list; assert both steps appear and produce a single `clarifyV2` call carrying both answers.

## 13. Out of scope (future improvements)

These were considered during design and deliberately deferred. Each is a measurable accuracy or UX win on top of the portion-aware foundation, but none are required to ship V2.

1. **Personalized portion memory.** Persist `(canonical_food, last_chosen_option_id)` per user. Next time the same food appears, default the option (or skip the clarification entirely if confidence is high). Cheap to add once `option_id` is stable; biggest UX payoff for repeat eaters.
2. **USDA-category-keyed templates.** Today's templates in `portionTemplates.ts` are keyed by canonical hint string; long-term they should key off USDA `foodCategory` so the table composes with `usdaLookup.ts` and prevents the LLM from inventing units that don't map to known density data.
3. **Two-pass decomposition for fat/oil refinement.** Oil/butter/ghee/cream estimates are the largest single source of variance for compound dishes. A second narrow LLM pass that *only* refines fat grams given the dish identity (~200 input tokens) would tighten the calorie band materially. Worth A/B-ing once the count×size foundation is stable.
4. **Confidence-weighted clarification skipping.** The current `max(50, 0.05 × mealTotalKcal)` threshold is a first pass. A more sophisticated rule could weight by user-specific calorie goal proximity (clarify aggressively when the day is near goal, leniently otherwise).
5. **Count auto-correction from text.** When `decomposition_count_dropped` fires repeatedly for similar inputs, an offline job could mine those cases and produce few-shot examples for the decomposition prompt. Closes the loop on count-extraction quality without prompt rewrites every release.
6. **`option.detail` toggle for power users.** Today `detail` ("≈ 35g each") is shown small under each option label. A profile setting `showGramsInPortionUI: true` could promote it to inline display for users who want the gram numbers visible. Kept opt-in so the default flow stays gram-free.

## Implementation order

1. **Proto changes + regen** — single PR, no logic change. Verifies generated TS/Dart compiles before any caller updates.
2. **Backend decomposition + portion templates + clarification redesign + matcher** — one PR, gated by the new tests. Includes `meal_name` propagation in pipeline events.
3. **Flutter analysis sheet** — header + ingredient accumulator + replay seed. Independent of #2 visually (the sheet works correctly with the old or new clarification proto), but needs proto from #1.
4. **Flutter clarification sheet** — id-based matcher + COUNT_QUESTION rendering. Lands together with #2 to avoid runtime mismatches.

Each PR ships with its own tests. No flag, no rollout staging — V2 is the only path and the contract changes atomically.
