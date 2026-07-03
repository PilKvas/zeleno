// ignore_for_file: avoid_print

import 'dart:io';

const _libRoot = 'lib';
const _exportFileName = 'export.dart';
const _generatedSuffixes = ['.g.dart', '.freezed.dart'];

/// Directories skipped entirely (no export.dart, not scanned as children).
bool _shouldSkipDirectory(Directory dir) {
  final name = _dirName(dir);
  if (name.startsWith('.')) return true;

  // Generated l10n output — import AppLocalizations directly.
  if (name == 'gen' && _normalizePath(dir.parent.path).endsWith('l10n')) {
    return true;
  }

  return false;
}

String _normalizePath(String path) {
  return path.replaceAll('\\', '/');
}

bool _isGenerated(String fileName) {
  return _generatedSuffixes.any(fileName.endsWith);
}

bool _isPartFile(File file) {
  final lines = file.readAsLinesSync();
  if (lines.isEmpty) return false;
  return lines.first.trim().startsWith('part of');
}

String _formatExportFile(List<String> exports) {
  const header = '''
// GENERATED CODE - DO NOT MODIFY BY HAND
// Run `make exports` to regenerate.

''';

  final sorted = exports.toList()..sort();
  return '$header${sorted.join('\n')}\n';
}

Future<({int created, int updated, int removed})> _generateExport(
  Directory dir,
) async {
  final exports = <String>[];
  final entities = dir.listSync()
    ..sort((a, b) => a.path.compareTo(b.path));

  for (final entity in entities) {
    if (entity is! File || !entity.path.endsWith('.dart')) continue;

    final name = _fileName(entity);
    if (name == _exportFileName) continue;
    if (name == 'main.dart' && _isLibRoot(dir)) continue;
    if (_isGenerated(name)) continue;
    if (_isPartFile(entity)) continue;

    exports.add("export '$name';");
  }

  for (final entity in entities) {
    if (entity is! Directory || _shouldSkipDirectory(entity)) continue;

    final childExport = File('${entity.path}/$_exportFileName');
    if (childExport.existsSync()) {
      final childName = _dirName(entity);
      exports.add("export '$childName/$_exportFileName';");
    }
  }

  final exportFile = File('${dir.path}/$_exportFileName');

  if (exports.isEmpty) {
    if (exportFile.existsSync()) {
      exportFile.deleteSync();
      return (created: 0, updated: 0, removed: 1);
    }
    return (created: 0, updated: 0, removed: 0);
  }

  final content = _formatExportFile(exports);

  if (exportFile.existsSync()) {
    if (exportFile.readAsStringSync() == content) {
      return (created: 0, updated: 0, removed: 0);
    }
    exportFile.writeAsStringSync(content);
    return (created: 0, updated: 1, removed: 0);
  }

  exportFile.writeAsStringSync(content);
  return (created: 1, updated: 0, removed: 0);
}

bool _isLibRoot(Directory dir) {
  final normalized = _normalizePath(dir.path);
  return normalized == _libRoot || normalized.endsWith('/$_libRoot');
}

String _dirName(Directory dir) {
  return _normalizePath(dir.path).split('/').where((s) => s.isNotEmpty).last;
}

String _fileName(File file) {
  return _normalizePath(file.path).split('/').where((s) => s.isNotEmpty).last;
}

Future<void> main() async {
  final libDir = Directory(_libRoot);
  if (!libDir.existsSync()) {
    stderr.writeln('$_libRoot/ not found. Run from project root.');
    exit(1);
  }

  final allDirs = <Directory>[libDir];

  await for (final entity in libDir.list(recursive: true)) {
    if (entity is Directory && !_shouldSkipDirectory(entity)) {
      allDirs.add(entity);
    }
  }

  allDirs.sort((a, b) {
    final depthA = _normalizePath(a.path).split('/').length;
    final depthB = _normalizePath(b.path).split('/').length;
    return depthB.compareTo(depthA);
  });

  var created = 0;
  var updated = 0;
  var removed = 0;

  for (final dir in allDirs) {
    if (_shouldSkipDirectory(dir)) continue;
    final result = await _generateExport(dir);
    created += result.created;
    updated += result.updated;
    removed += result.removed;
  }

  print('Barrel exports: $created created, $updated updated, $removed removed');
}
