import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:calorify/shared_widgets/responsive_layout.dart';
import 'package:widgets/widgets.dart';

/// Debug reference for operators: Prometheus histograms and client analytics.
class MealAnalysisObservabilityScreen extends StatelessWidget {
  const MealAnalysisObservabilityScreen({super.key});

  static const _metricsBody = '''
GET /metrics on the Calorify backend.

## meal_analysis_trace_step_seconds
Histogram (seconds) labeled by category and name.
Examples:
- category=llm, name=decompose_text | decompose_image | enrich_presentation | estimate_macros_fallback
- category=pipeline, name=resolve_ingredients
- category=db, name=persist_session_snapshot | record_meal_analysis_meal_type | record_meal_analysis_clarification

### p95 decomposition (text)
histogram_quantile(0.95,
  sum by (le, name) (
    rate(meal_analysis_trace_step_seconds_bucket{name="decompose_text"}[5m])
  )
)

### p95 ingredient resolution
histogram_quantile(0.95,
  sum by (le) (
    rate(meal_analysis_trace_step_seconds_bucket{name="resolve_ingredients"}[5m])
  )
)

## Firebase Analytics (app)
Event: mealAnalysisV3Completed
Parameters: duration_ms (int), source (image | text)

See also: backend/docs/meal-analysis-prometheus.md
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meal analysis observability')),
      body: ResponsiveContent(
        maxWidth: 840,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text(
              'Use this screen to copy metric names and sample queries into Grafana or '
              'your monitoring docs. The production dashboard is Prometheus + Grafana '
              '(or another scraper for /metrics); mobile timing is in Firebase Analytics.',
              style: TextStyle(height: 1.4),
            ),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed:
                  () => Clipboard.setData(
                    const ClipboardData(text: _metricsBody),
                  ),
              icon: const Icon(AppIcons.copy),
              label: const Text('Copy reference to clipboard'),
            ),
            const SizedBox(height: 24),
            SelectableText(
              _metricsBody,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontFamily: 'monospace',
                height: 1.35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
