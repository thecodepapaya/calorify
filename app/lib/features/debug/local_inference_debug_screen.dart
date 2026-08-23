import 'dart:convert';

import 'package:calorify/core/network/network_request_cancellation.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/providers/local_inference_providers.dart';
import 'package:calorify/core/services/local_inference_service.dart';
import 'package:calorify/core/services/local_nutrition_calculator.dart';
import 'package:calorify/core/services/local_nutrition_pack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:uuid/uuid.dart';

class LocalInferenceDebugScreen extends ConsumerStatefulWidget {
  const LocalInferenceDebugScreen({super.key});

  @override
  ConsumerState<LocalInferenceDebugScreen> createState() =>
      _LocalInferenceDebugScreenState();
}

class _LocalInferenceDebugScreenState
    extends ConsumerState<LocalInferenceDebugScreen> {
  final _textController = TextEditingController(
    text: 'For breakfast I had a bowl of oatmeal with one banana.',
  );
  bool _running = false;
  String _output = 'Refresh capability status or run a one-off check.';
  LocalInferenceCapabilities? _capabilities;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _refreshCapabilities());
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Local inference tests')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Gemini Nano capability',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(_capabilitySummary()),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      OutlinedButton.icon(
                        onPressed: _running ? null : _refreshCapabilities,
                        icon: const Icon(LucideIcons.refreshCw, size: 18),
                        label: const Text('Refresh'),
                      ),
                      OutlinedButton.icon(
                        onPressed: _running ? null : _downloadModel,
                        icon: const Icon(LucideIcons.download, size: 18),
                        label: const Text('Download model'),
                      ),
                      OutlinedButton.icon(
                        onPressed: _running ? null : _warmUp,
                        icon: const Icon(LucideIcons.flame, size: 18),
                        label: const Text('Warm up'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Local nutrition (Phase 4)',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'One-off checks for pack activation, matching, remote cache fill, and deterministic math.',
                    style: theme.textTheme.bodySmall,
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      OutlinedButton(
                        onPressed: _running ? null : _nutritionStatus,
                        child: const Text('Pack/cache status'),
                      ),
                      OutlinedButton(
                        onPressed: _running ? null : _installNutritionPack,
                        child: const Text('Download + verify'),
                      ),
                      OutlinedButton(
                        onPressed: _running ? null : _testLocalPackLookup,
                        child: const Text('Known/missing lookup'),
                      ),
                      OutlinedButton(
                        onPressed: _running ? null : _testRemoteResolver,
                        child: const Text('Remote cache fill'),
                      ),
                      OutlinedButton(
                        onPressed: _running ? null : _testCalculator,
                        child: const Text('Calculator sample'),
                      ),
                      OutlinedButton(
                        onPressed: _running ? null : _clearNutritionCache,
                        child: const Text('Clear lookup cache'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    controller: _textController,
                    minLines: 2,
                    maxLines: 4,
                    maxLength: 2000,
                    decoration: const InputDecoration(
                      labelText: 'Meal text',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      FilledButton.icon(
                        onPressed: _running ? null : _runLocal,
                        icon: const Icon(LucideIcons.cpu, size: 18),
                        label: const Text('Run local'),
                      ),
                      OutlinedButton.icon(
                        onPressed: _running ? null : _compareWithCloud,
                        icon: const Icon(LucideIcons.gitCompare, size: 18),
                        label: const Text('Compare with cloud'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            color: theme.colorScheme.surfaceContainerLow,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Text(
                        'Result',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      if (_running) ...[
                        const Spacer(),
                        const SizedBox(
                          width: 18,
                          height: 18,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 10),
                  SelectableText(
                    _output,
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontFamily: 'monospace',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  LocalInferenceService get _service => ref.read(localInferenceServiceProvider);

  String _capabilitySummary() {
    final capabilities = _capabilities;
    if (capabilities == null) return 'Status not loaded.';
    return [
      'status=${capabilities.featureStatus.name}',
      'ready=${capabilities.ready}',
      'structured=${capabilities.structuredOutputSupported}',
      'text=${capabilities.textSupported}',
      'model=${capabilities.modelName ?? 'unknown'}',
    ].join(' · ');
  }

  Future<void> _refreshCapabilities() => _run('Capability check', () async {
    final capabilities = await _service.getCapabilities();
    if (mounted) setState(() => _capabilities = capabilities);
    return _capabilitySummary();
  });

  Future<void> _downloadModel() => _run('Model download', () async {
    final capabilities = await _service.downloadModel();
    if (mounted) setState(() => _capabilities = capabilities);
    return _capabilitySummary();
  });

  Future<void> _warmUp() => _run('Warm-up', () async {
    final elapsed = await _service.warmUp();
    return 'completed in ${elapsed.inMilliseconds} ms';
  });

  Future<void> _runLocal() {
    return _run('Local proposal', () async {
      final result = await _service.analyzeText(_textController.text);
      return const JsonEncoder.withIndent('  ').convert({
        'elapsedMs': result.elapsed.inMilliseconds,
        'requestId': result.requestId,
        'proposal': result.proposal.toProto3Json(),
      });
    });
  }

  Future<void> _compareWithCloud() => _run('Local/cloud comparison', () async {
    final localWatch = Stopwatch()..start();
    final local = await _service.analyzeText(_textController.text);
    localWatch.stop();

    final cloudWatch = Stopwatch()..start();
    final cancellation = NetworkRequestCancellation();
    final stream = await ref
        .read(foodRepositoryProvider)
        .analyzeTextV2(
          analysisId: const Uuid().v4(),
          textDescription: _textController.text,
          cancellation: cancellation,
        );
    PipelineDecompositionData? cloudDecomposition;
    await for (final event in stream) {
      cloudDecomposition ??= event.decomposition;
    }
    cloudWatch.stop();
    final localNames =
        local.proposal.ingredients
            .map((ingredient) => ingredient.rawName)
            .toList();
    final cloudNames =
        cloudDecomposition?.ingredients
            .map((ingredient) => ingredient.rawName)
            .toList() ??
        const <String>[];
    return const JsonEncoder.withIndent('  ').convert({
      'localElapsedMs': localWatch.elapsedMilliseconds,
      'cloudElapsedMs': cloudWatch.elapsedMilliseconds,
      'localIngredients': localNames,
      'cloudIngredients': cloudNames,
    });
  });

  Future<void> _nutritionStatus() => _run('Pack/cache status', () async {
    final pack = await ref.read(localNutritionPackServiceProvider).loadActive();
    final cache =
        await ref.read(databaseInterfaceProvider).getLocalNutritionCacheStats();
    return const JsonEncoder.withIndent('  ').convert({
      'activePack': pack?.pack.packVersion,
      'datasetVersion': pack?.pack.datasetVersion,
      'records': pack?.pack.records.length ?? 0,
      'packBytes': pack?.byteSize ?? 0,
      'cacheRecords': cache.recordCount,
      'cacheBytes': cache.approximateBytes,
    });
  });

  Future<void> _installNutritionPack() => _run(
    'Nutrition pack install',
    () async {
      final policy =
          await ref.read(foodRepositoryProvider).getLocalInferencePolicy();
      if (!policy.localNutritionEnabled ||
          !policy.hasLocalNutritionManifestUrl()) {
        throw StateError('Backend local-nutrition capability is disabled.');
      }
      final installed = await ref
          .read(localNutritionPackServiceProvider)
          .install(Uri.parse(policy.localNutritionManifestUrl));
      ref.invalidate(localNutritionStatusProvider);
      return 'installed ${installed.pack.packVersion} · '
          '${installed.pack.records.length} rows · ${installed.byteSize} bytes';
    },
  );

  Future<void> _testLocalPackLookup() => _run('Local pack lookup', () async {
    final installed =
        await ref.read(localNutritionPackServiceProvider).loadActive();
    if (installed == null || installed.pack.records.isEmpty) {
      throw StateError('Install a pack first.');
    }
    final record = installed.pack.records.first;
    final known = normalizeLocalNutritionTerm(record.lookupKeys.first);
    final index = {
      for (final row in installed.pack.records)
        for (final key in row.lookupKeys)
          normalizeLocalNutritionTerm(key): row.fdcId,
    };
    return const JsonEncoder.withIndent('  ').convert({
      'knownKey': known,
      'knownFdcId': index[known],
      'missingKey': 'debug food that cannot exist',
      'missingResult': index['debug food that cannot exist'],
    });
  });

  Future<void> _testRemoteResolver() =>
      _run('Remote cache-fill contract', () async {
        final analysisId = const Uuid().v4();
        final response = await ref
            .read(foodRepositoryProvider)
            .resolveLocalNutrition(
              analysisId: analysisId,
              lookups: [
                LocalNutritionLookup(
                  rowId: 'known',
                  canonicalHint: 'bananas raw',
                  preparation: 'raw',
                ),
                LocalNutritionLookup(
                  rowId: 'missing',
                  canonicalHint: 'debug food that cannot exist qzjx',
                ),
              ],
            );
        return const JsonEncoder.withIndent(
          '  ',
        ).convert(response.toProto3Json());
      });

  Future<void> _testCalculator() => _run('Calculator sample', () async {
    const calculator = LocalNutritionCalculator();
    final banana = calculator.scale(
      PipelineMacros(
        calories: 89,
        protein: 1.09,
        carbs: 22.84,
        fat: 0.33,
        fiber: 2.6,
      ),
      118,
    );
    final yogurt = calculator.scale(
      PipelineMacros(
        calories: 59,
        protein: 10.3,
        carbs: 3.6,
        fat: 0.4,
        fiber: 0,
      ),
      170,
    );
    return const JsonEncoder.withIndent('  ').convert({
      'banana118g': banana.toProto3Json(),
      'yogurt170g': yogurt.toProto3Json(),
      'total': calculator.sum([banana, yogurt]).toProto3Json(),
    });
  });

  Future<void> _clearNutritionCache() =>
      _run('Clear nutrition cache', () async {
        await ref.read(databaseInterfaceProvider).clearLocalNutritionCache();
        ref.invalidate(localNutritionStatusProvider);
        return 'lookup cache cleared; downloaded pack retained';
      });

  Future<void> _run(String label, Future<String> Function() action) async {
    if (_running) return;
    setState(() {
      _running = true;
      _output = '$label running…';
    });
    try {
      final value = await action();
      if (mounted) setState(() => _output = '$label\n$value');
    } on LocalInferenceException catch (error) {
      if (mounted) {
        setState(
          () =>
              _output =
                  '$label\ncode=${error.code}\nfallback=${error.fallbackReason.name}\nmessage=${error.message}',
        );
      }
    } on Object catch (error) {
      if (mounted) setState(() => _output = '$label\n$error');
    } finally {
      if (mounted) setState(() => _running = false);
    }
  }
}
