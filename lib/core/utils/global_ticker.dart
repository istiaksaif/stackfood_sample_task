// lib/core/utils/global_ticker.dart
import 'dart:async';

/// 🔁 Shared global ticker across the whole app
/// Emits a value every minute — ideal for live timers, match clocks, etc.
/// Use `.asBroadcastStream()` so multiple widgets can listen safely.
final Stream<int> globalMinuteTicker =
Stream.periodic(const Duration(minutes: 1), (count) => count)
    .asBroadcastStream();
