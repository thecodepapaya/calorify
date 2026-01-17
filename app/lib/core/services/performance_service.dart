import 'dart:async';

import 'package:measure_flutter/measure_flutter.dart';
import 'package:flutter/foundation.dart';

enum TraceType {
  splashScreenLoad,
  firebaseAuthInit,
  firebaseCrashlyticsInit,
  firebaseAppCheckInit,
  healthServiceInit,
  databaseServiceInit,
  notificationServiceInit,
  analyticsServiceInit,
  foodAnalysisServiceInit,
  foodImageAnalysis,
  foodDescriptionAnalysis,
  remoteDbProfileUpdate,
  watchServiceInit,
}

class Performance {
  Performance._();

  static Performance _instance = Performance._();
  static Performance get instance => _instance;

  @visibleForTesting
  static void setMockInstance(Performance mock) {
    _instance = mock;
  }

  Span startTrace(TraceType trace, {Span? parentSpan}) {
    final span = Measure.instance.startSpan(trace.name);
    if (parentSpan != null) span.setParent(parentSpan);
    return span;
  }

  void stopTrace(Span span) => span.setStatus(SpanStatus.ok).end();

  void traceError(Span span) => span.setStatus(SpanStatus.error).end();

  static FutureOr<T> trace<T>(
    TraceType traceType,
    FutureOr<T> Function() function, {
    Span? parentSpan,
  }) async {
    final span = instance.startTrace(traceType, parentSpan: parentSpan);
    try {
      final T res = await function();
      instance.stopTrace(span);
      return res;
    } catch (_) {
      instance.traceError(span);
      rethrow;
    }
  }
}
