import 'dart:io';

import 'package:test/test.dart';
import 'package:path/path.dart' as p;

void main() async {
  test("example app", () async {
    final dir = p.normalize(p.join(Directory.current.path, 'example'));
    expect(Directory(dir).existsSync(), true);

    final result = Process.runSync('flutter', ['pub', 'get'],
        workingDirectory: dir, runInShell: true);
    expect(result.exitCode, 0, reason: result.stderr);
    final result1 = await Process.run(
        'flutter', ['pub', 'run', 'rabbit', "generate", "-f"],
        workingDirectory: dir, runInShell: true);
    expect(result1.exitCode, 0, reason: result1.stderr);
    final result2 = await Process.run('flutter', ['test'],
        workingDirectory: dir, runInShell: true);
    expect(result2.exitCode, 0, reason: result2.stderr);
  });
}
