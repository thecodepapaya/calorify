import 'dart:async';

import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AiSummaryLifecycle extends ConsumerStatefulWidget {
  const AiSummaryLifecycle({required this.child, super.key});
  final Widget child;

  @override
  ConsumerState<AiSummaryLifecycle> createState() => _AiSummaryLifecycleState();
}

class _AiSummaryLifecycleState extends ConsumerState<AiSummaryLifecycle>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) => _catchUp());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) _catchUp();
  }

  void _catchUp() {
    if (!mounted) return;
    unawaited(
      ref.read(aiSummaryCoordinatorProvider).catchUp().whenComplete(() {
        if (mounted) ref.invalidate(aiSummaryProvider);
      }),
    );
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
