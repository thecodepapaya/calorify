import { createHash, timingSafeEqual } from 'node:crypto';
import type { FastifyInstance } from 'fastify';
import config from '../config.js';
import {
  listAnalysisHistory,
  type AnalysisHistoryEntry,
  type AnalysisHistoryPage,
} from '../services/analysisHistoryStore.js';
import type { MealAnalysisSource } from '../services/mealAnalysisStore.js';
import { buildOracleDownloadUrl } from '../services/oracleObjectStorage.js';

const ANALYSIS_HISTORY_USERNAME = 'calorify';

function escapeHtml(value: unknown): string {
  return String(value)
    .replaceAll('&', '&amp;')
    .replaceAll('<', '&lt;')
    .replaceAll('>', '&gt;')
    .replaceAll('"', '&quot;')
    .replaceAll("'", '&#39;');
}

function safeEqual(left: string, right: string): boolean {
  const leftDigest = createHash('sha256').update(left).digest();
  const rightDigest = createHash('sha256').update(right).digest();
  return timingSafeEqual(leftDigest, rightDigest);
}

export function isAnalysisHistoryAuthorized(
  authorization: string | undefined,
  password: string | null
): boolean {
  if (!password || !authorization?.startsWith('Basic ')) return false;
  let decoded: string;
  try {
    decoded = Buffer.from(authorization.slice(6), 'base64').toString('utf8');
  } catch {
    return false;
  }
  const separator = decoded.indexOf(':');
  if (separator < 0) return false;
  return safeEqual(decoded.slice(0, separator), ANALYSIS_HISTORY_USERNAME) &&
    safeEqual(decoded.slice(separator + 1), password);
}

function requestImageUrl(entry: AnalysisHistoryEntry): string | undefined {
  if (entry.source !== 'image' || !entry.requestPayload ||
      typeof entry.requestPayload !== 'object') return undefined;
  const key = (entry.requestPayload as Record<string, unknown>).imageObjectKey;
  if (typeof key !== 'string' || key.trim() === '') return undefined;
  try {
    return buildOracleDownloadUrl(key);
  } catch {
    return undefined;
  }
}

function asRecord(value: unknown): Record<string, unknown> | undefined {
  return value !== null && typeof value === 'object' && !Array.isArray(value)
    ? value as Record<string, unknown>
    : undefined;
}

function firstString(value: unknown, ...keys: string[]): string | undefined {
  const record = asRecord(value);
  for (const key of keys) {
    if (typeof record?.[key] === 'string' && String(record[key]).trim() !== '') {
      return String(record[key]);
    }
  }
  return undefined;
}

function nestedRecord(value: unknown, key: string): Record<string, unknown> | undefined {
  return asRecord(asRecord(value)?.[key]);
}

function arrayCount(value: unknown, ...keys: string[]): number | undefined {
  const record = asRecord(value);
  for (const key of keys) {
    if (Array.isArray(record?.[key])) return record[key].length;
  }
  return undefined;
}

function humanStage(stage?: string): string {
  return (stage ?? 'legacy session')
    .toLowerCase()
    .replaceAll('_', ' ')
    .replace(/\b\w/g, (character) => character.toUpperCase());
}

function sessionTone(entry: AnalysisHistoryEntry): 'complete' | 'waiting' | 'error' | 'running' {
  if (entry.lastResponseStep === 'ERROR') return 'error';
  if (entry.stage === 'COMPLETED' || entry.stage === 'NO_FOOD_DETECTED') return 'complete';
  if (entry.stage?.startsWith('AWAITING_')) return 'waiting';
  return 'running';
}

function formatTimestamp(timestamp: string): string {
  const date = new Date(timestamp);
  if (Number.isNaN(date.valueOf())) return timestamp;
  return date.toLocaleString('en-IN', {
    timeZone: 'Asia/Kolkata',
    day: '2-digit',
    month: 'short',
    hour: '2-digit',
    minute: '2-digit',
    hour12: true,
  });
}

function durationLabel(entry: AnalysisHistoryEntry): string | undefined {
  const start = new Date(entry.createdAt).valueOf();
  const end = new Date(entry.updatedAt).valueOf();
  if (!Number.isFinite(start) || !Number.isFinite(end) || end <= start) return undefined;
  const seconds = Math.round((end - start) / 1000);
  if (seconds < 60) return `${seconds}s elapsed`;
  const minutes = Math.floor(seconds / 60);
  return `${minutes}m ${seconds % 60}s elapsed`;
}

function responseSummary(entry: AnalysisHistoryEntry): string {
  const response = entry.lastResponseData ?? entry.resultData;
  const mealName = firstString(response, 'mealName', 'meal_name');
  const macros = nestedRecord(response, 'macros');
  const calories = macros?.calories;
  const reason = firstString(response, 'outcomeReason', 'outcome_reason', 'message');
  const parts = [
    mealName,
    typeof calories === 'number' ? `${Math.round(calories)} kcal` : undefined,
    reason,
  ].filter((part): part is string => Boolean(part));
  if (parts.length > 0) return parts.join(' · ');
  const stepSummaries: Record<string, string> = {
    CLARIFICATION: 'Clarification requested from the user',
    MEAL_TYPE_QUESTION: 'Meal type requested from the user',
    NO_FOOD: 'No food detected in the input',
    ERROR: 'The latest request ended with an error',
    STARTED: 'Analysis started',
  };
  return stepSummaries[entry.lastResponseStep ?? ''] ?? 'Open to inspect the recorded pipeline';
}

function sessionTitle(entry: AnalysisHistoryEntry): string {
  const response = entry.lastResponseData ?? entry.resultData;
  const decompositionName = firstString(entry.decompositionData, 'mealName', 'meal_name');
  const resultName = firstString(response, 'mealName', 'meal_name');
  if (resultName ?? decompositionName) return (resultName ?? decompositionName)!;
  const request = asRecord(entry.requestPayload);
  if (entry.source === 'text' && typeof request?.textDescription === 'string') {
    const text = request.textDescription.trim();
    return text.length > 64 ? `${text.slice(0, 61)}…` : text;
  }
  return entry.source === 'image' ? 'Image meal analysis' : 'Text meal analysis';
}

interface FlowStep {
  number: number;
  title: string;
  description: string;
  value: unknown;
  preview: string;
  next?: string;
  accent?: boolean;
}

function flowStep(step: FlowStep, openPayload: boolean = false): string {
  const generated = step.value !== undefined;
  const payload = generated
    ? `<details class="payload"${openPayload ? ' open' : ''}><summary>View generated data</summary><pre>${escapeHtml(JSON.stringify(step.value, null, 2))}</pre></details>`
    : '<div class="not-generated">No durable data was generated for this step.</div>';
  return `<li class="flow-step ${generated ? 'generated' : 'pending'}${step.accent ? ' accent' : ''}">
    <div class="step-marker" aria-hidden="true">${generated ? '✓' : step.number}</div>
    <div class="step-content">
      <div class="step-heading"><div><span class="eyebrow">Step ${step.number}</span><h3>${escapeHtml(step.title)}</h3></div><span class="step-state">${generated ? 'Generated' : 'No data'}</span></div>
      <p class="step-description">${escapeHtml(step.description)}</p>
      ${generated ? `<div class="step-preview">${escapeHtml(step.preview)}</div>` : ''}
      ${payload}
      ${generated && step.next ? `<div class="next-step"><span>Next</span>${escapeHtml(step.next)}</div>` : ''}
    </div>
  </li>`;
}

function numberValue(record: Record<string, unknown> | undefined, key: string): number {
  return typeof record?.[key] === 'number' ? record[key] as number : 0;
}

function jsonDetails(label: string, value: unknown): string {
  return `<details class="payload"><summary>${escapeHtml(label)}</summary><pre>${escapeHtml(JSON.stringify(value, null, 2))}</pre></details>`;
}

function artifactCard(artifact: unknown): string {
  const record = asRecord(artifact);
  const data = asRecord(record?.data);
  const name = firstString(record, 'name') ?? 'stage_artifact';
  const offset = numberValue(record, 'capturedAtOffsetMs');
  if (name === 'nutrition_match') {
    const selected = asRecord(data?.selected);
    const selectedName = firstString(selected, 'description') ?? 'No USDA row selected';
    const fdcId = firstString(selected, 'fdcId', 'id');
    const source = [firstString(selected, 'dataType', 'source'), firstString(selected, 'datasetVersion')]
      .filter((value): value is string => Boolean(value)).join(' · ');
    const matchType = firstString(data, 'matchType') ?? 'unknown';
    const score = typeof data?.score === 'number' ? ` · score ${data.score.toFixed(3)}` : '';
    const margin = typeof data?.confidenceMargin === 'number' ? ` · margin ${data.confidenceMargin.toFixed(3)}` : '';
    return `<article class="artifact usda"><div class="artifact-head"><div><span class="artifact-kind">Nutrition match · +${offset}ms</span><h4>${escapeHtml(firstString(data, 'rawName') ?? 'Ingredient')}</h4></div><span class="match-type">${escapeHtml(matchType)}</span></div><p><strong>${escapeHtml(selectedName)}</strong>${fdcId ? ` · FDC ${escapeHtml(fdcId)}` : ''}</p>${source ? `<p class="artifact-meta">${escapeHtml(source)}</p>` : ''}<p class="artifact-meta">Lookup: ${escapeHtml(firstString(data, 'canonicalHint') ?? '—')}${escapeHtml(score)}${escapeHtml(margin)}</p>${selected?.per100g ? `<div class="macro-line"><span>Per 100g</span><code>${escapeHtml(JSON.stringify(selected.per100g))}</code></div>` : ''}${jsonDetails('All match details', data)}</article>`;
  }
  const labels: Record<string, string> = {
    decomposition_model_output: 'Model decomposition output',
    llm_nutrition_fallback: 'LLM nutrition fallback',
    presentation_input: 'Presentation stage input',
    presentation_output: 'Presentation enrichment output',
  };
  const preview = name === 'presentation_output'
    ? [firstString(data, 'quantity'), firstString(data, 'tip')].filter(Boolean).join(' · ')
    : name === 'llm_nutrition_fallback'
      ? `${firstString(data, 'canonicalHint') ?? 'Ingredient'} · ${firstString(data, 'outcome') ?? 'unknown'}`
      : name === 'presentation_input'
        ? `${firstString(data, 'mealName') ?? 'Meal'} · structured inputs sent for enrichment`
        : firstString(data, 'meal_name', 'mealName') ?? 'Validated structured model output';
  return `<article class="artifact"><div class="artifact-head"><div><span class="artifact-kind">Stage artifact · +${offset}ms</span><h4>${escapeHtml(labels[name] ?? name)}</h4></div></div><p>${escapeHtml(preview)}</p>${jsonDetails('Inspect structured data', data)}</article>`;
}

function observationCard(observation: NonNullable<AnalysisHistoryEntry['observations']>[number], index: number): string {
  const trace = asRecord(observation.traceSummary) ?? {};
  const events = (Array.isArray(observation.eventSequence) ? observation.eventSequence : []).map((event) => {
    const item = asRecord(event);
    return `<span>${escapeHtml(firstString(item, 'step') ?? '?')} <small>+${numberValue(item, 'elapsedMs')}ms</small></span>`;
  }).join('<i>→</i>');
  const steps = Array.isArray(trace.steps) ? trace.steps : [];
  const attempts = Array.isArray(trace.llmAttempts) ? trace.llmAttempts : [];
  const artifacts = Array.isArray(trace.artifacts) ? trace.artifacts : [];
  const attemptRows = attempts.map((attempt) => {
    const item = asRecord(attempt);
    const outcome = firstString(item, 'outcome') ?? '—';
    return `<tr><td>${escapeHtml(firstString(item, 'operation') ?? 'model call')}</td><td>${escapeHtml(firstString(item, 'provider') ?? '—')}</td><td><code>${escapeHtml(firstString(item, 'model') ?? '—')}</code></td><td class="${outcome === 'error' ? 'bad' : 'good'}">${escapeHtml(outcome)}</td><td>${numberValue(item, 'durationMs')}ms</td></tr>`;
  }).join('');
  const traceRows = steps.map((step) => {
    const item = asRecord(step);
    return `<div class="trace-row"><span class="trace-cat">${escapeHtml(firstString(item, 'category') ?? 'step')}</span><strong>${escapeHtml(firstString(item, 'name') ?? 'unknown')}</strong><span>+${numberValue(item, 'startedAtOffsetMs')}ms</span><span>${numberValue(item, 'durationMs')}ms</span>${jsonDetails('Metadata', item?.meta ?? {})}</div>`;
  }).join('');
  const duration = numberValue(trace, 'totalDurationMs');
  return `<details class="observation"${index === 0 ? ' open' : ''}><summary><div><span class="eyebrow">API pass ${index + 1} · ${escapeHtml(observation.streamFormat)}</span><h3>${escapeHtml(observation.action.replaceAll('_', ' '))}</h3></div><div class="obs-result"><span class="${observation.hadError ? 'bad' : 'good'}">${escapeHtml(observation.lastStep ?? 'unknown')}</span><small>${duration}ms</small></div></summary><div class="observation-body"><div class="metric-row"><span><strong>${numberValue(trace, 'llmCallCount')}</strong> LLM calls</span><span><strong>${numberValue(trace, 'llmAttemptCount')}</strong> provider attempts</span><span><strong>${numberValue(trace, 'usdaLookupCount')}</strong> USDA lookups</span><span><strong>${numberValue(trace, 'dbWriteCount')}</strong> DB writes</span></div><h4 class="subhead">Events sent to the app</h4><div class="event-chain">${events || '<span>No events recorded</span>'}</div>${attemptRows ? `<h4 class="subhead">Provider attempts</h4><div class="table-wrap"><table><thead><tr><th>Operation</th><th>Provider</th><th>Model</th><th>Outcome</th><th>Time</th></tr></thead><tbody>${attemptRows}</tbody></table></div>` : ''}${artifacts.length ? `<h4 class="subhead">Generated and grounded details</h4><div class="artifacts">${artifacts.map(artifactCard).join('')}</div>` : '<div class="not-generated">No detailed artifacts were captured for this older API pass.</div>'}${traceRows ? `<details class="internal-trace"><summary>Internal stage waterfall · ${steps.length} operations</summary><div>${traceRows}</div></details>` : ''}</div></details>`;
}

function auditSection(entry: AnalysisHistoryEntry): string {
  const items = [
    ...(entry.clarificationHistory ?? []).map((value) => ({ label: 'Clarification submitted', value })),
    ...(entry.mealTypeHistory ?? []).map((value) => ({ label: 'Meal type selected', value })),
    ...(entry.feedbackHistory ?? []).map((value) => ({ label: 'Feedback recorded', value })),
    ...(entry.loggedMeal ? [{ label: 'Meal log state', value: entry.loggedMeal }] : []),
  ];
  if (items.length === 0) return '';
  return `<section class="audit-section"><div class="section-title"><span>User actions & durable audit</span><small>Clarifications, corrections, selections, and logging</small></div><div class="audit-grid">${items.map((item) => `<article><strong>${escapeHtml(item.label)}</strong>${jsonDetails('View details', item.value)}</article>`).join('')}</div></section>`;
}

function entryCard(entry: AnalysisHistoryEntry, index: number): string {
  const request = entry.requestPayload && typeof entry.requestPayload === 'object'
    ? entry.requestPayload as Record<string, unknown>
    : {};
  const textDescription = typeof request.textDescription === 'string'
    ? request.textDescription
    : undefined;
  const imageUrl = requestImageUrl(entry);
  const input = entry.source === 'text'
    ? `<div class="input-copy">${escapeHtml(textDescription ?? 'Text not retained')}</div>`
    : imageUrl
      ? `<a href="${escapeHtml(imageUrl)}" target="_blank" rel="noreferrer"><img src="${escapeHtml(imageUrl)}" alt="Meal submitted for analysis" loading="lazy"></a>`
      : '<div class="input-copy empty">Image unavailable</div>';
  const selection = entry.selectedMealType
    ? { mealType: entry.selectedMealType, source: entry.selectedMealTypeSource }
    : undefined;
  const finalResponse = entry.lastResponseStep
    ? { step: entry.lastResponseStep, data: entry.lastResponseData }
    : entry.resultData;
  const finalResponseLabel = entry.lastResponseStep
    ? 'Latest response sent to the app'
    : 'Persisted result from this legacy session';
  const ingredientCount = arrayCount(entry.ingredientsData, 'ingredients');
  const questionCount = arrayCount(entry.uncertaintyData, 'clarifications');
  const uncertaintyRecord = asRecord(entry.uncertaintyData);
  const rawClarificationQuestions = uncertaintyRecord?.clarifications;
  const clarificationQuestions = Array.isArray(rawClarificationQuestions) &&
      rawClarificationQuestions.length > 0
    ? rawClarificationQuestions
    : undefined;
  const clarification = clarificationQuestions !== undefined ||
      entry.clarificationAnswers !== undefined || entry.pendingClarificationAnswers !== undefined
    ? {
        questions: clarificationQuestions,
        answers: entry.clarificationAnswers ?? entry.pendingClarificationAnswers,
      }
    : undefined;
  const mealTypeResolution = entry.mealTypeQuestionData !== undefined || selection !== undefined
    ? { question: entry.mealTypeQuestionData, selection }
    : undefined;
  const steps: FlowStep[] = [
    {
      number: 1,
      title: 'Input captured',
      description: 'The server saved the original request and analysis context.',
      value: entry.requestPayload,
      preview: entry.source === 'text'
        ? textDescription ?? 'Text input retained in the request payload'
        : 'Image object key and request context retained',
      next: 'The model interpreted the meal and proposed its component foods.',
    },
    {
      number: 2,
      title: 'Meal decomposed',
      description: 'The model identified the meal, food items, portions, and initial confidence.',
      value: entry.decompositionData,
      preview: firstString(entry.decompositionData, 'mealName', 'meal_name') ?? 'Structured model output recorded',
      next: 'Each proposed food was resolved against nutrition data.',
    },
    {
      number: 3,
      title: 'Ingredients grounded',
      description: 'Proposed foods were matched and converted into deterministic nutrition values.',
      value: entry.ingredientsData,
      preview: ingredientCount === undefined ? 'Grounded ingredient snapshot recorded' : `${ingredientCount} ingredient${ingredientCount === 1 ? '' : 's'} resolved`,
      next: 'The server measured portion and calorie uncertainty.',
    },
    {
      number: 4,
      title: 'Uncertainty checked',
      description: 'The server decided whether it had enough confidence to continue or needed user input.',
      value: entry.uncertaintyData,
      preview: firstString(entry.uncertaintyData, 'calorieConfidence', 'calorie_confidence') ?? 'Uncertainty report recorded',
      next: clarificationQuestions !== undefined ? 'The app asked a portion question before continuing.' : 'No portion question was needed, so the flow continued.',
    },
    {
      number: 5,
      title: 'Portion clarification',
      description: 'Any portion question shown to the user and the submitted answer are grouped here.',
      value: clarification,
      preview: questionCount === undefined
        ? 'Clarification answer recorded'
        : `${questionCount} question${questionCount === 1 ? '' : 's'} generated · ${entry.clarificationAnswers !== undefined ? 'answered' : 'awaiting answer'}`,
      next: entry.clarificationAnswers !== undefined
        ? 'The answer was applied before the flow resolved meal type.'
        : 'The flow paused here and is waiting for the user’s answer.',
    },
    {
      number: 6,
      title: 'Meal type resolved',
      description: 'The model selected the meal occasion, or the app asked the user to choose one.',
      value: mealTypeResolution,
      preview: selection ? `${selection.mealType} · chosen by ${selection.source ?? 'unknown source'}` : 'Meal-type question generated · awaiting selection',
      next: 'The server assembled and streamed the latest response to the app.',
    },
    {
      number: 7,
      title: finalResponseLabel,
      description: 'This is the exact latest step and data envelope recorded at the HTTP stream boundary.',
      value: finalResponse,
      preview: `${entry.lastResponseStep ?? 'RESULT'} · ${responseSummary(entry)}`,
      accent: true,
    },
  ];
  const tone = sessionTone(entry);
  const elapsed = durationLabel(entry);
  return `<details class="session"${index === 0 ? ' open' : ''}>
    <summary class="session-summary">
      <div class="summary-main"><div class="summary-badges"><span class="source ${entry.source}">${entry.source}</span><span class="status ${tone}">${escapeHtml(humanStage(entry.stage))}</span></div><h2>${escapeHtml(sessionTitle(entry))}</h2><p>${escapeHtml(responseSummary(entry))}</p></div>
      <div class="summary-time"><time datetime="${escapeHtml(entry.createdAt)}">${escapeHtml(formatTimestamp(entry.createdAt))}</time><span>IST${elapsed ? ` · ${escapeHtml(elapsed)}` : ''}</span></div>
      <span class="summary-chevron" aria-hidden="true"></span>
    </summary>
    <div class="session-body">
      <div class="meta"><span>Analysis <code>${escapeHtml(entry.analysisId)}</code></span>${entry.userId ? `<span>User <code>${escapeHtml(entry.userId)}</code></span>` : ''}<span>${escapeHtml(entry.locale)}${entry.countryCode ? ` · ${escapeHtml(entry.countryCode)}` : ''}${entry.timeZone ? ` · ${escapeHtml(entry.timeZone)}` : ''}</span>${entry.parentAnalysisId ? `<span>Reanalysis of <code>${escapeHtml(entry.parentAnalysisId)}</code></span>` : ''}</div>
      <section class="input"><div class="section-title"><span>Original input</span><small>What started this session</small></div>${input}</section>
      <section class="flow-section"><div class="section-title"><span>Pipeline trace</span><small>Follow from top to bottom</small></div><ol class="flow">${steps.map((step) => flowStep(step, step.number === 7)).join('')}</ol></section>
      <section class="observability"><div class="section-title"><span>Execution observability</span><small>What ran, what it used, and what it generated</small></div>${(entry.observations ?? []).length > 0 ? (entry.observations ?? []).map(observationCard).join('') : '<div class="not-generated">Detailed execution traces are available for analyses created after the observability migration.</div>'}</section>
      ${auditSection(entry)}
    </div>
  </details>`;
}

function historyUrl(page: number, source?: MealAnalysisSource): string {
  const params = new URLSearchParams({ page: String(page) });
  if (source) params.set('source', source);
  return `/analysis-history?${params.toString()}`;
}

function pagination(model: AnalysisHistoryPage): string {
  if (model.totalPages <= 1) return '';
  const previous = model.page > 1
    ? `<a href="${historyUrl(model.page - 1, model.source)}">← Newer</a>`
    : '<span></span>';
  const next = model.page < model.totalPages
    ? `<a href="${historyUrl(model.page + 1, model.source)}">Older →</a>`
    : '<span></span>';
  return `<nav class="pagination">${previous}<span>Page ${model.page} of ${model.totalPages}</span>${next}</nav>`;
}

export function renderAnalysisHistory(model: AnalysisHistoryPage): string {
  const cards = model.entries.length > 0
    ? model.entries.map(entryCard).join('')
    : '<div class="no-results">No meal analyses found.</div>';
  const active = (source?: MealAnalysisSource) => model.source === source ? ' active' : '';
  return `<!doctype html><html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>Meal analysis history · Calorify</title><style>
  .observability,.audit-section{padding-top:26px;margin-top:18px;border-top:1px solid var(--line)}.observation{border:1px solid #d6e1da;border-radius:13px;margin:10px 0;background:#fbfdfb;overflow:hidden}.observation>summary{display:flex;justify-content:space-between;align-items:center;gap:16px;padding:13px 15px;cursor:pointer;list-style:none}.observation>summary::-webkit-details-marker{display:none}.observation>summary h3{margin:1px 0 0;font-size:15px;text-transform:capitalize}.observation-body{border-top:1px solid var(--line);padding:14px}.obs-result{text-align:right}.obs-result span,.obs-result small{display:block}.good{color:var(--green);font-weight:750}.bad{color:var(--red);font-weight:750}.metric-row{display:grid;grid-template-columns:repeat(4,1fr);gap:8px}.metric-row>span{padding:10px;background:#f0f5f1;border-radius:9px;color:var(--muted)}.metric-row strong{display:block;color:var(--ink);font-size:18px}.subhead{margin:18px 0 8px;font-size:11px;text-transform:uppercase;letter-spacing:.07em}.event-chain{display:flex;align-items:center;gap:7px;overflow:auto;padding:2px 0 5px}.event-chain>span{flex:none;padding:5px 8px;border-radius:7px;background:var(--green-soft);color:var(--green);font-weight:700}.event-chain small{font-weight:500;color:#658072}.event-chain i{color:#9aa69e;font-style:normal}.table-wrap{overflow:auto}table{width:100%;border-collapse:collapse;font-size:12px}th,td{text-align:left;padding:7px 8px;border-bottom:1px solid #e6ece8}th{color:var(--muted);font-size:10px;text-transform:uppercase}.artifacts{display:grid;grid-template-columns:repeat(2,minmax(0,1fr));gap:9px}.artifact{min-width:0;padding:12px;border:1px solid #dce5df;border-radius:10px;background:#fff}.artifact.usda{border-left:4px solid #6d9d7e}.artifact-head{display:flex;justify-content:space-between;gap:8px}.artifact h4{margin:1px 0;font-size:14px}.artifact p{margin:7px 0;color:#4e5b53}.artifact-kind{font-size:9px;color:var(--muted);font-weight:800;text-transform:uppercase;letter-spacing:.07em}.match-type{height:max-content;padding:2px 7px;border-radius:99px;background:var(--green-soft);color:var(--green);font-size:10px;font-weight:800;text-transform:uppercase}.artifact-meta{font-size:11px}.macro-line{display:flex;align-items:flex-start;gap:8px;padding:7px;background:#f4f7f5;border-radius:7px;font-size:10px}.macro-line span{flex:none;font-weight:800;text-transform:uppercase}.macro-line code{overflow-wrap:anywhere}.internal-trace{margin-top:15px;border-top:1px dashed #ccd8d0}.internal-trace>summary{padding:12px 0 5px;cursor:pointer;color:var(--green);font-weight:750}.trace-row{display:grid;grid-template-columns:70px minmax(130px,1fr) 70px 70px;gap:8px;align-items:center;padding:7px 0;border-bottom:1px solid #e8edea;font-size:11px}.trace-cat{text-transform:uppercase;color:var(--muted);font-weight:800}.trace-row>.payload{grid-column:1/-1;margin:0}.audit-grid{display:grid;grid-template-columns:repeat(2,minmax(0,1fr));gap:8px}.audit-grid>article{padding:11px;border:1px solid var(--line);border-radius:9px;background:#fafcfa}.audit-grid .payload{margin-top:6px}@media(max-width:720px){.metric-row{grid-template-columns:repeat(2,1fr)}.artifacts,.audit-grid{grid-template-columns:1fr}.trace-row{grid-template-columns:58px minmax(100px,1fr) 58px}.trace-row>span:nth-of-type(3){display:none}}
  :root{color-scheme:light;--ink:#19231d;--muted:#68736c;--line:#dce5df;--green:#166943;--green-soft:#eaf6ef;--blue-soft:#e9f2ff;--violet-soft:#f0ebff;--amber:#9a6500;--amber-soft:#fff6dc;--red:#a33b34;--red-soft:#fff0ee;--paper:#f3f6f3;--card:#fff;--code:#111914}*{box-sizing:border-box}body{margin:0;background:var(--paper);color:var(--ink);font:14px/1.5 ui-sans-serif,system-ui,-apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif}main{max-width:1080px;margin:auto;padding:42px 22px 72px}.top{display:flex;align-items:end;justify-content:space-between;gap:24px;margin-bottom:18px}.kicker{display:block;margin-bottom:5px;color:var(--green);font-size:11px;font-weight:800;letter-spacing:.12em;text-transform:uppercase}h1{font-size:clamp(27px,4vw,38px);line-height:1.15;letter-spacing:-.035em;margin:0}.subtitle{color:var(--muted);margin:8px 0 0;max-width:620px}.filters{display:flex;gap:6px;padding:4px;background:#e5ebe7;border-radius:11px}.filters a,.pagination a{color:#3c4941;text-decoration:none;padding:7px 12px;border-radius:8px;font-weight:650}.filters a.active{background:#fff;color:var(--green);box-shadow:0 1px 4px #19231d1a}.guide{display:flex;align-items:center;justify-content:space-between;gap:16px;margin:0 0 18px;padding:12px 14px;border:1px solid #cee0d4;background:#f9fcfa;border-radius:12px;color:#4e5b53}.legend{display:flex;gap:15px;flex-wrap:wrap;font-size:12px}.legend span{display:flex;align-items:center;gap:6px}.dot{width:8px;height:8px;border-radius:50%;background:#aeb7b1}.dot.generated{background:var(--green)}.dot.decision{background:#d99612}.session{background:var(--card);border:1px solid var(--line);border-radius:16px;margin:12px 0;box-shadow:0 5px 18px #19231d0a;overflow:hidden}.session[open]{border-color:#cbd9d0;box-shadow:0 10px 30px #19231d10}.session-summary{position:relative;display:grid;grid-template-columns:minmax(0,1fr) auto 20px;gap:18px;align-items:center;padding:18px 20px;cursor:pointer;list-style:none}.session-summary::-webkit-details-marker{display:none}.session-summary:hover{background:#fafcfa}.summary-main{min-width:0}.summary-main h2{margin:7px 0 2px;font-size:18px;line-height:1.3;letter-spacing:-.015em;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}.summary-main p{margin:0;color:var(--muted);white-space:nowrap;overflow:hidden;text-overflow:ellipsis}.summary-badges{display:flex;gap:7px}.source,.status{font-size:10px;font-weight:800;text-transform:uppercase;letter-spacing:.065em;border-radius:99px;padding:3px 8px}.source.text{background:var(--blue-soft);color:#245b95}.source.image{background:var(--violet-soft);color:#65459a}.status.complete{background:var(--green-soft);color:var(--green)}.status.waiting{background:var(--amber-soft);color:var(--amber)}.status.error{background:var(--red-soft);color:var(--red)}.status.running{background:#edf0ee;color:#576159}.summary-time{text-align:right;color:var(--muted);font-size:12px}.summary-time time{display:block;color:#3f4b44;font-weight:650}.summary-time span{display:block}.summary-chevron{width:9px;height:9px;border-right:2px solid #849087;border-bottom:2px solid #849087;transform:rotate(45deg);transition:transform .18s}.session[open] .summary-chevron{transform:rotate(225deg)}.session-body{border-top:1px solid var(--line);padding:0 20px 24px}.meta{display:flex;gap:8px 18px;flex-wrap:wrap;padding:12px 0;color:var(--muted);font-size:11px;border-bottom:1px solid #edf1ee}.meta code{color:#455149}.input{padding:20px 0}.section-title{display:flex;align-items:baseline;justify-content:space-between;gap:12px;margin-bottom:10px}.section-title>span{font-weight:800;font-size:12px;letter-spacing:.08em;text-transform:uppercase}.section-title small{color:var(--muted)}.input-copy{font-size:17px;white-space:pre-wrap;background:#f6f8f6;border:1px solid #e5ebe7;border-radius:11px;padding:14px 16px}img{display:block;width:min(100%,420px);max-height:320px;border-radius:12px;object-fit:cover;border:1px solid var(--line);box-shadow:0 3px 12px #19231d12}.flow-section{padding-top:4px}.flow{list-style:none;margin:0;padding:0}.flow-step{position:relative;display:grid;grid-template-columns:34px minmax(0,1fr);gap:12px;padding-bottom:14px}.flow-step:not(:last-child)::before{content:"";position:absolute;left:16px;top:34px;bottom:-2px;width:2px;background:#dfe6e1}.flow-step.generated:not(:last-child)::before{background:#9bc3aa}.step-marker{position:relative;z-index:1;display:grid;place-items:center;width:34px;height:34px;border:2px solid #d5ddd7;border-radius:50%;background:#fff;color:#849087;font-size:12px;font-weight:800}.generated .step-marker{border-color:#7eb493;background:var(--green-soft);color:var(--green)}.accent .step-marker{border-color:#e1b351;background:var(--amber-soft);color:var(--amber)}.step-content{border:1px solid var(--line);border-radius:12px;padding:13px 15px;background:#fff}.pending .step-content{background:#fafbfa;color:#7b857e}.accent.generated .step-content{border-color:#e6c772;background:#fffdf7}.step-heading{display:flex;align-items:flex-start;justify-content:space-between;gap:12px}.eyebrow{display:block;color:var(--muted);font-size:9px;font-weight:800;letter-spacing:.11em;text-transform:uppercase}.step-heading h3{font-size:15px;margin:1px 0 0}.step-state{font-size:10px;font-weight:750;text-transform:uppercase;letter-spacing:.05em;color:#7b857e;background:#f0f3f1;border-radius:99px;padding:3px 7px;white-space:nowrap}.generated .step-state{color:var(--green);background:var(--green-soft)}.accent.generated .step-state{color:var(--amber);background:var(--amber-soft)}.step-description{margin:7px 0;color:var(--muted)}.step-preview{display:inline-flex;margin:2px 0 8px;padding:5px 9px;border-radius:7px;background:#f0f4f1;color:#34443a;font-weight:650}.payload{border-top:1px solid #e9eeeb;margin-top:4px}.payload>summary{cursor:pointer;color:var(--green);font-weight:700;padding:9px 0 2px;list-style:none}.payload>summary::before{content:"＋";display:inline-block;width:20px}.payload[open]>summary::before{content:"−"}.payload pre{margin:9px 0 2px;padding:13px;max-height:430px;overflow:auto;border-radius:9px;background:var(--code);color:#dbe9df;font:12px/1.55 ui-monospace,SFMono-Regular,Menlo,monospace;white-space:pre-wrap;overflow-wrap:anywhere}.not-generated{margin-top:8px;padding:9px 11px;border-radius:8px;background:#f2f4f2;color:#7b857e;font-style:italic}.next-step{display:flex;gap:8px;align-items:flex-start;margin-top:10px;padding-top:9px;border-top:1px dashed #dce4de;color:#56635b;font-size:12px}.next-step span{flex:none;color:var(--green);font-size:9px;font-weight:850;letter-spacing:.08em;text-transform:uppercase;padding-top:2px}.pagination{display:grid;grid-template-columns:1fr auto 1fr;align-items:center;margin-top:22px;text-align:center;color:var(--muted)}.pagination a{background:#fff;border:1px solid var(--line);justify-self:start}.pagination a:last-child{justify-self:end}.no-results{text-align:center;background:#fff;border:1px solid var(--line);border-radius:14px;padding:54px;color:var(--muted)}@media(max-width:720px){main{padding:24px 12px 48px}.top{align-items:flex-start;flex-direction:column}.guide{align-items:flex-start;flex-direction:column}.session-summary{grid-template-columns:minmax(0,1fr) 14px;gap:10px;padding:16px}.summary-time{grid-column:1;text-align:left;display:flex;gap:7px}.summary-chevron{grid-column:2;grid-row:1/3}.session-body{padding:0 14px 18px}.meta{flex-direction:column;gap:4px}.section-title small{display:none}.flow-step{grid-template-columns:28px minmax(0,1fr);gap:8px}.step-marker{width:28px;height:28px}.flow-step:not(:last-child)::before{left:13px;top:28px}.step-content{padding:12px}.step-heading{gap:8px}.step-description{font-size:13px}.summary-main h2,.summary-main p{white-space:normal}.filters{width:100%}.filters a{flex:1;text-align:center}}
  </style></head><body><main><div class="top"><div><span class="kicker">Internal quality review</span><h1>Meal analysis history</h1><p class="subtitle">Inspect what entered the pipeline, what each layer generated, and what the app received.</p></div><nav class="filters" aria-label="Input type"><a class="${active()}" href="${historyUrl(1)}">All</a><a class="${active('text')}" href="${historyUrl(1, 'text')}">Text</a><a class="${active('image')}" href="${historyUrl(1, 'image')}">Image</a></nav></div><div class="guide"><span>${model.totalEntries} sessions · newest first · 10 per page. Open a session and follow its trace from top to bottom.</span><div class="legend"><span><i class="dot generated"></i>Generated</span><span><i class="dot decision"></i>Response</span><span><i class="dot"></i>No data</span></div></div>${cards}${pagination(model)}</main></body></html>`;
}

interface HistoryQuery {
  page?: string;
  source?: string;
}

function parseSource(value: string | undefined): MealAnalysisSource | undefined {
  return value === 'text' || value === 'image' ? value : undefined;
}

export async function analysisHistoryRoutes(fastify: FastifyInstance): Promise<void> {
  fastify.get<{ Querystring: HistoryQuery }>('/analysis-history', {
    config: { rateLimit: { max: 30, timeWindow: '1 minute' } },
  }, async (request, reply) => {
    if (!config.ANALYSIS_HISTORY_PASSWORD) {
      reply.status(404).send({ message: 'Not Found' });
      return;
    }
    const rawAuthorization = request.headers.authorization;
    const authorization = Array.isArray(rawAuthorization) ? rawAuthorization[0] : rawAuthorization;
    if (!isAnalysisHistoryAuthorized(authorization, config.ANALYSIS_HISTORY_PASSWORD)) {
      reply.header('WWW-Authenticate', 'Basic realm="Calorify analysis history", charset="UTF-8"');
      reply.status(401).send('Authentication required');
      return;
    }
    const page = Number.parseInt(request.query.page ?? '1', 10);
    const model = await listAnalysisHistory(page, parseSource(request.query.source));
    reply
      .header('Cache-Control', 'no-store')
      .header('Referrer-Policy', 'no-referrer')
      .header('Content-Security-Policy', "default-src 'none'; img-src https: data:; style-src 'unsafe-inline'; base-uri 'none'; form-action 'self'; frame-ancestors 'none'")
      .type('text/html; charset=utf-8')
      .send(renderAnalysisHistory(model));
  });
}
