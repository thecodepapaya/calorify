import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:io';
import 'dart:typed_data';

import 'package:calorify/core/network/network_request_cancellation.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/providers/local_inference_providers.dart';
import 'package:calorify/core/services/local_inference_service.dart';
import 'package:calorify/core/services/local_nutrition_calculator.dart';
import 'package:calorify/core/services/local_nutrition_pack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';
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
  final _resultKey = GlobalKey();
  Uint8List? _imageBytes;
  String? _imageName;
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
          _buildSectionTitle(context, 'Gemini Nano capability'),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(LucideIcons.cpu),
                  title: const Text('Capability status'),
                  subtitle: Text(
                    _capabilitySummary(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Divider(height: 1),
                _buildActionTile(
                  icon: LucideIcons.refreshCw,
                  title: 'Refresh',
                  description: 'Check whether Gemini Nano is ready to use',
                  onTap: _running ? null : _refreshCapabilities,
                ),
                _buildActionTile(
                  icon: LucideIcons.download,
                  title: 'Download model',
                  description: 'Install the on-device Gemini Nano model',
                  onTap: _running ? null : _downloadModel,
                ),
                _buildActionTile(
                  icon: LucideIcons.flame,
                  title: 'Warm up',
                  description: 'Prepare the model for a faster first request',
                  onTap: _running ? null : _warmUp,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          _buildSectionTitle(context, 'Local nutrition (Phase 4)'),
          Card(
            child: Column(
              children: [
                _buildActionTile(
                  icon: LucideIcons.database,
                  title: 'Pack/cache status',
                  description: 'Inspect installed data and cached lookups',
                  onTap: _running ? null : _nutritionStatus,
                ),
                _buildActionTile(
                  icon: LucideIcons.download,
                  title: 'Download + verify',
                  description: 'Download the nutrition pack and validate it',
                  onTap: _running ? null : _installNutritionPack,
                ),
                _buildActionTile(
                  icon: LucideIcons.search,
                  title: 'Known/missing lookup',
                  description: 'Test local matches and unknown ingredients',
                  onTap: _running ? null : _testLocalPackLookup,
                ),
                _buildActionTile(
                  icon: LucideIcons.cloud,
                  title: 'Remote cache fill',
                  description: 'Test resolving and caching a remote ingredient',
                  onTap: _running ? null : _testRemoteResolver,
                ),
                _buildActionTile(
                  icon: LucideIcons.calculator,
                  title: 'Calculator sample',
                  description: 'Run deterministic nutrition calculations',
                  onTap: _running ? null : _testCalculator,
                ),
                _buildActionTile(
                  icon: LucideIcons.trash2,
                  title: 'Clear lookup cache',
                  description: 'Remove cached nutrition lookup results',
                  onTap: _running ? null : _clearNutritionCache,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          _buildSectionTitle(context, 'Meal analysis'),
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
                  const SizedBox(height: 8),
                  _buildActionTile(
                    icon: LucideIcons.cpu,
                    title: 'Run local',
                    description: 'Analyze the meal using the on-device model',
                    onTap: _running ? null : _runLocal,
                  ),
                  _buildActionTile(
                    icon: LucideIcons.gitCompare,
                    title: 'Compare with cloud',
                    description: 'Compare local results with the cloud model',
                    onTap: _running ? null : _compareWithCloud,
                  ),
                  const Divider(height: 24),
                  if (_imageBytes != null) ...[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.memory(
                        _imageBytes!,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${_imageName ?? 'Selected image'} · ${_formatBytes(_imageBytes!.length)}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                  _buildActionTile(
                    icon: LucideIcons.imagePlus,
                    title: 'Choose meal image',
                    description:
                        'Select and compress an image for local testing',
                    onTap: _running ? null : _pickMealImage,
                  ),
                  _buildActionTile(
                    icon: LucideIcons.scanSearch,
                    title: 'Run image locally',
                    description: 'Analyze the selected image using Gemini Nano',
                    onTap:
                        _running || _imageBytes == null ? null : _runLocalImage,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          _buildSectionTitle(context, 'Result'),
          Card(
            key: _resultKey,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Icon(
                        LucideIcons.fileText,
                        size: 20,
                        color: theme.colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        _running ? 'Running check…' : 'Latest output',
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
                  const SizedBox(height: 12),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: theme.colorScheme.outline),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: SelectableText(
                        _output,
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontFamily: 'monospace',
                          height: 1.4,
                        ),
                      ),
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

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: Theme.of(
          context,
        ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildActionTile({
    required IconData icon,
    required String title,
    required String description,
    required VoidCallback? onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(description, maxLines: 1, overflow: TextOverflow.ellipsis),
      trailing: const Icon(LucideIcons.chevronRight, size: 18),
      onTap: onTap,
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
    // Capability probing crosses the Android method channel and can hang if
    // the platform model service is unavailable. Keep a stuck probe from
    // disabling every debug action indefinitely.
    final capabilities = await _service.getCapabilities().timeout(
      const Duration(seconds: 10),
    );
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

  Future<void> _pickMealImage() => _run('Choose meal image', () async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return 'selection cancelled';
    final bytes = await ImageCompressionService.instance.compressImage(
      File(image.path),
    );
    if (bytes.isEmpty) throw StateError('The selected image is empty.');
    if (mounted) {
      setState(() {
        _imageBytes = bytes;
        _imageName = image.name;
      });
    }
    return 'selected ${image.name} · ${_formatBytes(bytes.length)}';
  });

  Future<void> _runLocalImage() {
    final imageBytes = _imageBytes;
    if (imageBytes == null) return Future.value();
    return _run('Local image proposal', () async {
      final result = await _service.analyzeImage(imageBytes);
      return const JsonEncoder.withIndent('  ').convert({
        'elapsedMs': result.elapsed.inMilliseconds,
        'requestId': result.requestId,
        'image': _imageName,
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

  static String _formatBytes(int bytes) {
    if (bytes < 1024) return '$bytes B';
    final kilobytes = bytes / 1024;
    if (kilobytes < 1024) return '${kilobytes.toStringAsFixed(1)} KB';
    return '${(kilobytes / 1024).toStringAsFixed(1)} MB';
  }

  Future<void> _run(String label, Future<String> Function() action) async {
    if (_running) {
      developer.log(
        '$label ignored because another check is running',
        name: 'LOCAL_INFERENCE_DEBUG',
      );
      return;
    }
    developer.log('$label started', name: 'LOCAL_INFERENCE_DEBUG');
    setState(() {
      _running = true;
      _output = '$label running…';
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final resultContext = _resultKey.currentContext;
      if (resultContext != null) {
        Scrollable.ensureVisible(
          resultContext,
          duration: const Duration(milliseconds: 250),
          alignment: 0.1,
        );
      }
    });
    try {
      final value = await action();
      developer.log('$label succeeded', name: 'LOCAL_INFERENCE_DEBUG');
      if (mounted) setState(() => _output = '$label\n$value');
    } on LocalInferenceException catch (error) {
      final nativeDetails =
          error.nativeDetails == null
              ? ''
              : '\nnative=${const JsonEncoder.withIndent('  ').convert(error.nativeDetails)}';
      developer.log(
        '$label failed: code=${error.code} message=${error.message}$nativeDetails',
        name: 'LOCAL_INFERENCE_DEBUG',
        error: error,
      );
      if (mounted) {
        setState(
          () =>
              _output =
                  '$label\ncode=${error.code}\nfallback=${error.fallbackReason.name}\nmessage=${error.message}$nativeDetails',
        );
      }
    } on Object catch (error, stackTrace) {
      developer.log(
        '$label failed',
        name: 'LOCAL_INFERENCE_DEBUG',
        error: error,
        stackTrace: stackTrace,
      );
      if (mounted) setState(() => _output = '$label\n$error');
    } finally {
      developer.log('$label finished', name: 'LOCAL_INFERENCE_DEBUG');
      if (mounted) setState(() => _running = false);
    }
  }
}
