import config from '../config.js';
import { closeDatabase, healthCheck, initializeDatabase } from '../services/infrastructure/database.js';
import { inspectUser, type UserObservabilityReport } from '../services/meal-analysis/observability.js';
import { parseUserInspectArgs, printUserInspectHelp } from './userInspectCliArgs.js';

function pretty(value: unknown): string {
  return JSON.stringify(value, null, 2);
}

function resultSummary(result: unknown): string {
  if (result == null || typeof result !== 'object') return 'no result';
  const value = result as Record<string, unknown>;
  const macros = value.macros as Record<string, unknown> | undefined;
  const name = value.mealName ?? value.meal_name ?? 'unnamed meal';
  const calories = macros?.calories ?? 'unknown kcal';
  const confidence = value.calorieConfidence ?? value.calorie_confidence ?? 'unknown confidence';
  return `${String(name)} | ${String(calories)} kcal | confidence ${String(confidence)}`;
}

export function formatUserObservabilityReport(report: UserObservabilityReport): string {
  const lines: string[] = [];
  lines.push(`User: ${report.user.userId}`);
  lines.push(`Found: ${report.user.exists ? 'yes' : 'no'}${report.user.sources.length ? ` (${report.user.sources.join(', ')})` : ''}`);
  lines.push(`Locale: ${report.user.locale}`);
  lines.push('');
  lines.push('Profile');
  lines.push(report.user.profile ? pretty(report.user.profile) : 'No profile row');
  lines.push('');
  lines.push('AI summary');
  lines.push(`Model: ${report.aiSummary.model}`);
  lines.push(
    report.aiSummary.latest
      ? `Latest (${report.aiSummary.latest.generatedAt}, ${report.aiSummary.latest.status}): ${report.aiSummary.latest.summary}`
      : 'Latest: no stored summary'
  );
  lines.push(`Stored summaries: ${report.aiSummary.history.length}`);
  for (const summary of report.aiSummary.history) {
    lines.push(`  ${summary.summaryLocalDate ?? 'legacy'} | ${summary.status} | attempts ${summary.attemptCount}${summary.lastErrorCode ? ` | error: ${summary.lastErrorCode}` : ''}`);
  }
  lines.push('');
  lines.push('Meal analysis');
  lines.push(pretty(report.mealAnalysis.totals));
  for (const analysis of report.mealAnalysis.recent) {
    lines.push(
      `  ${analysis.analysisId} | ${analysis.createdAt} | ${analysis.source} | ${resultSummary(analysis.result)} | ${analysis.loggedMeal ? 'logged' : 'not logged'}`
    );
  }
  lines.push('');
  lines.push(`Feedback (${report.feedback.length})`);
  for (const item of report.feedback) {
    lines.push(`  ${item.analysisId} | ${item.signal} | ${item.issues.join(', ') || 'no issue tags'}${item.otherText ? ` | ${item.otherText}` : ''}`);
  }
  lines.push('');
  lines.push('Use --json for decomposition, uncertainty, result, clarification, and full history values.');
  return lines.join('\n');
}

async function main(): Promise<void> {
  const parsed = parseUserInspectArgs(process.argv);
  if (!parsed.ok) {
    if (parsed.kind === 'help') {
      printUserInspectHelp();
      return;
    }
    console.error(parsed.message);
    printUserInspectHelp();
    process.exitCode = 1;
    return;
  }
  if (!config.DATABASE_URL) throw new Error('DATABASE_URL is not set');

  initializeDatabase();
  try {
    if (!(await healthCheck())) throw new Error('Database health check failed');
    const report = await inspectUser(parsed.options.userId, { limit: parsed.options.limit });
    console.log(parsed.options.json ? pretty(report) : formatUserObservabilityReport(report));
    if (!report.user.exists) process.exitCode = 2;
  } finally {
    await closeDatabase();
  }
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
