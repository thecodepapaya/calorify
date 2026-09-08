import { createHash, timingSafeEqual } from 'node:crypto';
import type { FastifyInstance } from 'fastify';
import config from '../config.js';
import {
  listMealAnalysisV3History,
  type MealAnalysisV3HistoryEntry,
  type MealAnalysisV3HistoryPage,
} from '../services/meal-analysis-v3/store.js';
import { buildOracleDownloadUrl } from '../services/infrastructure/objectStorage.js';

const USERNAME = 'calorify';

function escapeHtml(value: unknown): string {
  return String(value).replaceAll('&', '&amp;').replaceAll('<', '&lt;')
    .replaceAll('>', '&gt;').replaceAll('"', '&quot;').replaceAll("'", '&#39;');
}

function record(value: unknown): Record<string, unknown> | undefined {
  return value !== null && typeof value === 'object' && !Array.isArray(value)
    ? value as Record<string, unknown> : undefined;
}

function same(left: string, right: string): boolean {
  return timingSafeEqual(createHash('sha256').update(left).digest(), createHash('sha256').update(right).digest());
}

export function isAnalysisHistoryAuthorized(authorization: string | undefined, password: string | null): boolean {
  if (!password || !authorization?.startsWith('Basic ')) return false;
  const decoded = Buffer.from(authorization.slice(6), 'base64').toString('utf8');
  const separator = decoded.indexOf(':');
  return separator >= 0 && same(decoded.slice(0, separator), USERNAME) && same(decoded.slice(separator + 1), password);
}

function imageUrl(entry: MealAnalysisV3HistoryEntry): string | undefined {
  const input = record(entry.input);
  if (input?.kind !== 'IMAGE' || typeof input.imageId !== 'string') return undefined;
  try { return buildOracleDownloadUrl(input.imageId); } catch { return undefined; }
}

function details(title: string, value: unknown): string {
  if (value === undefined) return '';
  return `<details><summary>${escapeHtml(title)}</summary><pre>${escapeHtml(JSON.stringify(value, null, 2))}</pre></details>`;
}

function status(entry: MealAnalysisV3HistoryEntry): string {
  const failure = record(entry.failure);
  if (failure && typeof failure.code === 'string') {
    return `FAILED ${failure.code.replaceAll('_', ' ')}`;
  }
  const outcome = record(entry.result)?.outcome;
  if (typeof outcome === 'string') return outcome.replaceAll('_', ' ');
  return 'IN PROGRESS';
}

function entryCard(entry: MealAnalysisV3HistoryEntry): string {
  const input = record(entry.input) ?? {};
  const title = input.kind === 'TEXT' && typeof input.text === 'string'
    ? input.text : input.kind === 'IMAGE' ? 'Image meal analysis' : 'Meal analysis';
  const actions = [
    entry.nutritionAnswers !== undefined ? details('Submitted nutrition answers', entry.nutritionAnswers) : '',
    entry.mealTypeAnswer ? `<p>Meal type: <strong>${escapeHtml(entry.mealTypeAnswer)}</strong></p>` : '',
    entry.feedbackSignal ? `<p>Feedback: <strong>${escapeHtml(entry.feedbackSignal)}</strong></p>` : '',
    entry.loggedAt ? `<p>Logged at ${escapeHtml(entry.loggedAt)}${entry.deletedAt ? ' (deleted)' : ''}</p>${details('Logged meal', entry.loggedMeal)}` : '',
  ].join('');
  const preview = imageUrl(entry);
  return `<article><header><div><small>${escapeHtml(String(input.kind ?? 'UNKNOWN'))} · ${escapeHtml(status(entry))}</small><h2>${escapeHtml(title)}</h2></div><time>${escapeHtml(entry.updatedAt)}</time></header>${preview ? `<img src="${escapeHtml(preview)}" alt="Meal input" loading="lazy">` : ''}<p>Analysis ID: <code>${escapeHtml(entry.analysisId)}</code></p><section><h3>V3 flow</h3>${details('1. Input captured', entry.input)}${details('2. Latest pipeline result', entry.result)}${details('3. Terminal failure', entry.failure)}${actions || '<p>No user follow-up has been recorded.</p>'}</section></article>`;
}

export function renderAnalysisHistory(page: MealAnalysisV3HistoryPage): string {
  const filter = page.source ? `&source=${page.source}` : '';
  const cards = page.entries.length ? page.entries.map(entryCard).join('') : '<p>No V3 analysis sessions found.</p>';
  return `<!doctype html><html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>Meal analysis history</title><style>body{font:15px system-ui,sans-serif;max-width:980px;margin:2rem auto;padding:0 1rem;background:#fafafa;color:#17211b}nav{display:flex;gap:1rem;margin:1rem 0}article{background:#fff;border:1px solid #dbe3dc;border-radius:10px;padding:1rem;margin:1rem 0}header{display:flex;justify-content:space-between;gap:1rem}h2{margin:.2rem 0;font-size:1.1rem}h3{font-size:1rem}small{color:#526058}time{color:#526058;font-size:.85rem}img{max-width:240px;max-height:180px;border-radius:6px}details{margin:.55rem 0}pre{white-space:pre-wrap;overflow-wrap:anywhere;background:#f3f6f3;padding:.75rem;border-radius:5px}code{overflow-wrap:anywhere}</style></head><body><h1>Meal-analysis V3 history</h1><p>Read-only durable V3 session inspector. Sessions are ordered by latest activity.</p><nav><a href="/analysis-history">All</a><a href="/analysis-history?source=TEXT">Text</a><a href="/analysis-history?source=IMAGE">Image</a></nav>${cards}<footer>Page ${page.page} of ${Math.max(page.totalPages, 1)} · ${page.totalEntries} session${page.totalEntries === 1 ? '' : 's'}${page.page > 1 ? ` · <a href="/analysis-history?page=${page.page - 1}${filter}">Previous</a>` : ''}${page.page < page.totalPages ? ` · <a href="/analysis-history?page=${page.page + 1}${filter}">Next</a>` : ''}</footer></body></html>`;
}

export async function analysisHistoryRoutes(fastify: FastifyInstance): Promise<void> {
  fastify.get('/analysis-history', async (request, reply) => {
    if (!config.ANALYSIS_HISTORY_PASSWORD) return reply.status(404).send();
    if (!isAnalysisHistoryAuthorized(request.headers.authorization, config.ANALYSIS_HISTORY_PASSWORD)) {
      return reply.header('WWW-Authenticate', 'Basic realm="Calorify analysis history"').status(401).send();
    }
    const query = request.query as { page?: string; source?: string };
    const source = query.source === 'TEXT' || query.source === 'IMAGE' ? query.source : undefined;
    const page = Number.parseInt(query.page ?? '1', 10);
    const history = await listMealAnalysisV3History(page, source);
    return reply.header('Cache-Control', 'no-store').header('Referrer-Policy', 'no-referrer')
      .header('Content-Security-Policy', "default-src 'none'; img-src https:; style-src 'unsafe-inline'")
      .type('text/html; charset=utf-8').send(renderAnalysisHistory(history));
  });
}
