import 'dart:isolate';

import 'package:mason_logger/mason_logger.dart';

extension LoggerExt on Logger {
  /// For a progress bar which will be displayed in the terminal
  /// Runs on another thread to allow for synchronous operations
  Future<StopProgress> isolateProgress(String message,
      {ProgressOptions? options}) async {
    final localReceivePort = ReceivePort();
    final remoteSendPort = localReceivePort.sendPort;

    final future = Isolate.run(() async {
      final prog = this.progress(message);
      final receivePort = ReceivePort();
      remoteSendPort.send(receivePort.sendPort);
      await receivePort.first;
      prog.complete();
    });
    final localSendPort = await localReceivePort.first as SendPort;

    return StopProgress(() async {
      localSendPort.send(null);
      await future;
    });
  }
}

class StopProgress {
  final Future Function() stop;
  StopProgress(this.stop);
}
