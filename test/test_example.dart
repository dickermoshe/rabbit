import 'dart:io';

import 'package:test/test.dart';
import 'package:path/path.dart' as p;

void main() async {
  test("example app", () async {
    final dir = p.normalize(p.join(Directory.current.path, 'example'));
    final result =
        await Process.run('flutter', ['pub', 'get'], workingDirectory: dir);
    expect(result.exitCode, 0);
    final result2 =
        await Process.run('flutter', ['test'], workingDirectory: dir);
    expect(result2.exitCode, 0);
  });
}
