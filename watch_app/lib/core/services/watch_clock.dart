import 'dart:async';

abstract interface class WatchClock {
  DateTime now();

  Future<void> delay(Duration duration);

  Timer periodic(Duration duration, void Function(Timer timer) callback);
}

class SystemWatchClock implements WatchClock {
  const SystemWatchClock();

  @override
  DateTime now() => DateTime.now();

  @override
  Future<void> delay(Duration duration) => Future<void>.delayed(duration);

  @override
  Timer periodic(Duration duration, void Function(Timer timer) callback) {
    return Timer.periodic(duration, callback);
  }
}
