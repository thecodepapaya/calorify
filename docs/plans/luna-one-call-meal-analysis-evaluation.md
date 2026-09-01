# GPT-5.6 Luna one-call meal-analysis evaluation

## Status

The initial one-off evaluation and its matched three-repeat follow-up completed
on 2026-09-02. The follow-up result is not approval to replace the production
two-pass flow.

## Question

Can `openai/gpt-5.6-luna` produce both the component-parsing and ingredient-
decomposition outputs in one structured model call without losing the quality
of the current two-call flow?

## Methodology

The experiment used the 12 fixed text fixtures in
[the meal-analysis eval set](../../backend/evals/meal-analysis.cases.json).
Each fixture supplied its normal locale, country, time zone, timestamp, and
meal text. The evaluator and its assertions were unchanged and ran only after
each response was generated.

The baseline used the existing
[two-pass runner](../../backend/src/scripts/meal-analysis-eval.ts) with
`openai/gpt-5.6-luna` and `reasoning_effort: none`. Each run makes a
component call followed by an ingredient call.

The one-call arm used the same model and reasoning effort, but made exactly
one request per fixture. Its strict response schema was:

```json
{
  "firstPass": "the existing first-pass response",
  "secondPass": "the existing second-pass response, or null for no food"
}
```

Its system prompt combined the existing
[first-pass](../../backend/src/services/meal-analysis-v3/twoPassInterpretation.ts)
and second-pass instructions, explicitly requiring direct completion of both
objects in the single response. The temporary runner parsed both objects with
the existing Zod schemas, replayed them through `buildInterpretationProposal`,
and scored them with
[`evaluateMealAnalysisRun`](../../backend/src/evals/mealAnalysisEval.ts).

The following is the core combined-call logic. It is intentionally documented
here rather than retained as a production script: the experiment did not add
or change product behavior.

```ts
const combinedSchema = {
  type: 'object',
  additionalProperties: false,
  required: ['firstPass', 'secondPass'],
  properties: {
    firstPass: FIRST_PASS_RESPONSE_JSON_SCHEMA,
    secondPass: {
      anyOf: [SECOND_PASS_RESPONSE_JSON_SCHEMA, { type: 'null' }],
    },
  },
};

const response = await client.chat.completions.create({
  model: 'openai/gpt-5.6-luna',
  messages: [
    { role: 'system', content: combinedSystemPrompt },
    { role: 'user', content: inputDescription(evalCase.input) },
  ],
  response_format: {
    type: 'json_schema',
    json_schema: {
      name: 'meal_analysis_combined_v3',
      schema: combinedSchema,
      strict: true,
    },
  },
  reasoning_effort: 'none',
  max_completion_tokens: 9_000,
}, {
  operation: 'interpret_v3_combined_one_call_text',
  validateStructuredContent(value) {
    const candidate = value as { firstPass: unknown; secondPass: unknown };
    const first = firstPassResponseSchema.parse(candidate.firstPass);
    if (!first.food_detected) {
      if (candidate.secondPass !== null) throw new Error('No-food response must return null secondPass');
      return;
    }
    const second = secondPassResponseSchema.parse(candidate.secondPass);
    buildInterpretationProposal(first, second, normalizedTextInput);
  },
});

const candidate = JSON.parse(response.choices[0]!.message.content!);
const result = evaluateMealAnalysisRun(
  evalCase,
  candidate.firstPass,
  candidate.secondPass,
);
```

Two earlier approaches were excluded from the result:

- Hand-constructed combined responses that had access to expected assertions.
  They test schema expressiveness, not model capability.
- A request using an unnormalised temporary JSON schema that OpenRouter rejected
  before model generation. The final run reused the production-normalized
  schemas.

### Study accounting

The matched study used `openai/gpt-5.6-luna`, `reasoning_effort: none`, and
the unchanged 12-fixture dataset. It made three repetitions per fixture per
arm: 69 provider calls in the two-call arm (the no-food fixture requires only
the first pass) and 36 provider calls in the one-call arm. The one-call runner
was temporary and wrote artifacts outside the repository. No product code,
prompt, schema, or eval assertion was changed for the study.

## Findings

### Initial one-off result

The first live one-call run passed 10 of 12 fixtures and 304 of 306 hard
assertions. The current two-call pipeline passed all 12 fixtures and all 306
hard assertions. This result motivated the repeated comparison below; it is
not used as the decision result.

### Matched three-repeat comparison

Each arm ran all 12 fixtures three times, producing 36 scored runs per arm.
The request duration is wall-clock time around the model call or calls and the
local structural validation. Token and cost data are the provider-reported
values summed across the arm.

| Metric | Two calls | One combined call | One-call change |
| --- | ---: | ---: | ---: |
| Passing fixture runs | 36/36 (100.0%) | 28/36 (77.8%) | -22.2 percentage points |
| Hard assertions | 918/918 (100.0%) | 875/918 (95.3%) | -4.7 percentage points |
| Mean duration | 7,682 ms | 6,074 ms | 1,608 ms faster (20.9%) |
| Median duration | 7,296 ms | 5,487 ms | 1,809 ms faster (24.8%) |
| Prompt tokens | 123,827 | 124,149 | 322 more (0.3%) |
| Completion tokens | 28,203 | 27,727 | 476 fewer (1.7%) |
| Total tokens | 152,030 | 151,876 | 154 fewer (0.1%) |
| Provider cost | $0.042931 | $0.039359 | $0.003572 lower (8.3%) |

| Fixture | Two-call runs | One-call runs |
| --- | ---: | ---: |
| `us-banana-snack` | 3/3 | 3/3 |
| `us-nonfood-text` | 3/3 | 3/3 |
| `indian-masala-dosa-breakfast` | 3/3 | 3/3 |
| `japanese-onigiri-miso-breakfast` | 3/3 | 2/3 |
| `chinese-chongqing-noodles` | 3/3 | 3/3 |
| `korean-shin-ramyun-set` | 3/3 | 2/3 |
| `thai-mango-sticky-rice` | 3/3 | 2/3 |
| `lebanese-shawarma-ayran` | 3/3 | 1/3 |
| `ethiopian-vegan-beyaynetu` | 3/3 | 1/3 |
| `nigerian-jollof-party-plate` | 3/3 | 3/3 |
| `italian-carbonara-no-cream` | 3/3 | 2/3 |
| `us-chipotle-fractional-bowl` | 3/3 | 3/3 |

### One-call failure details

The table lists every failed one-call repetition. When the second-pass schema
or its item correspondence failed, later ingredient assertions could also fail
because the evaluator correctly treats the second output as unusable; those
cascading assertions do not establish that every listed ingredient was absent.

| Fixture and repeat | Hard assertions | Primary failure evidence |
| --- | ---: | --- |
| `ethiopian-vegan-beyaynetu`, 2 | 35/36 | Injera unit estimate was 100 g; the accepted range is 130–170 g. |
| `ethiopian-vegan-beyaynetu`, 3 | 28/36 | A variation referenced `vegetable oil` without that ingredient in the same recipe; item correspondence then failed. |
| `italian-carbonara-no-cream`, 2 | 9/18 | A variation referenced excluded `panna`; the pass also retained the excluded cream concept and broke item correspondence. |
| `japanese-onigiri-miso-breakfast`, 3 | 23/25 | First/second item correspondence failed, and the second-pass recipe did not satisfy the required miso term. |
| `korean-shin-ramyun-set`, 2 | 27/30 | First/second item correspondence failed, leaving egg and kimchi required-ingredient checks unsatisfied. |
| `lebanese-shawarma-ayran`, 1 | 28/29 | The result retained zero-gram tahini despite the explicit no-tahini instruction. |
| `lebanese-shawarma-ayran`, 2 | 18/29 | A variation referenced excluded tahini without a matching ingredient; correspondence and exclusion checks also failed. |
| `thai-mango-sticky-rice`, 3 | 9/17 | A variation referenced excluded mung bean without a matching ingredient; correspondence and exclusion checks also failed. |

## Observations and decision

The one-call contract is viable: Luna produced fully accepted combined results
for 28 of 36 runs across diverse text, locale, quantity, and meal-shape cases.
Its speed and cost were modestly better. However, eight runs failed hard
assertions. The failures included second-pass schema or first/second item-set
correspondence errors, retention of explicitly excluded ingredients, and an
underestimated count-food unit mass. These are correctness contract failures,
not cosmetic differences.

Keep the two-pass flow as the default. It was perfect in this study, while the
one-call arm sacrificed 22.2 percentage points of fixture-run reliability for
about 1.6 seconds and $0.000099 per run. The single combined prompt also
removes the production boundary where the ingredient pass consumes a
serialized, validated component result.

An independent Sarvam review reached the same conclusion: retain the two-call
design because the one-call correctness gap outweighs its modest savings.

## Decision log

| Decision | Status | Basis |
| --- | --- | --- |
| Exclude hand-authored combined outputs from capability evidence. | Completed | They were created with expected assertions and only established that the two schemas can coexist. |
| Exclude the initial provider-400 combined-schema attempt from scored results. | Completed | The provider rejected the unnormalised temporary schema before model generation. |
| Make no production implementation change. | Completed | The experiment used only temporary tooling and isolated artifacts. |
| Keep the existing two-call interpreter as the product default. | Decided | It passed all 36 repeated runs; the one-call arm passed 28. |
| Add a one-call production path or feature flag. | Not approved | The study did not meet parity and no product change is justified. |
| Treat the measured one-call gains as sufficient reason to replace two calls. | Rejected | The gain was about 1.6 seconds and $0.000099 per run, while hard-assertion reliability regressed. |

## Next experiment

The following are recommendations, not completed product work:

- Retain the two-call implementation and add regression cases focused on
  first/second-pass correspondence, explicit ingredient exclusions, and
  count-food unit-mass estimates.
- Do not introduce a one-call production path until targeted prompt or schema
  changes address the observed failure classes.
- If a specific product flow requires the latency reduction, test a one-call
  variant behind an experiment flag with new, pre-registered success criteria
  and held-out cases before reconsidering the replacement decision.
