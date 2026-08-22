// ignore_for_file: avoid_print

import 'dart:io';

const packageName = 'zeleno_v2';
const libRoot = 'lib';
const exportFileName = 'export.dart';
const generatedSuffixes = ['.g.dart', '.freezed.dart'];
const skipGeneratedFiles = {'router.gr.dart'};

final _importLineRegex = RegExp(
  r'''^(?<indent>\s*)(?<kind>import|export)\s+['"](?<uri>[^'"]+)['"](?<suffix>[^;]*);''',
);

void main() {
  final fileToBarrels = _buildFileToBarrelsIndex();
  var updatedFiles = 0;

  for (final file in _dartFilesToProcess()) {
    final original = file.readAsStringSync();
    final migrated = _migrateContent(
      original,
      _normalizePath(file.path),
      fileToBarrels,
    );

    if (migrated != original) {
      file.writeAsStringSync(migrated);
      updatedFiles++;
    }
  }

  print('Import migration: $updatedFiles files updated');
}

List<File> _dartFilesToProcess() {
  final files = <File>[];

  for (final entity in Directory(libRoot).listSync(recursive: true)) {
    if (entity is! File || !entity.path.endsWith('.dart')) continue;

    final name = _fileName(entity);
    if (name == exportFileName) continue;
    if (skipGeneratedFiles.contains(name)) continue;
    if (generatedSuffixes.any(name.endsWith)) continue;
    if (_isPartFile(entity)) continue;

    files.add(entity);
  }

  files.sort((a, b) => a.path.compareTo(b.path));
  return files;
}

String _migrateContent(
  String content,
  String importerLibPath,
  Map<String, Set<String>> fileToBarrels,
) {
  final lines = content.split('\n');
  final header = <String>[];
  final imports = <_ImportLine>[];
  final body = <String>[];
  var section = 0;

  for (final line in lines) {
    final match = _importLineRegex.firstMatch(line);
    if (match != null) {
      section = 1;
      final uri = match.namedGroup('uri')!;
      final migratedUri =
          _migrateUri(
            uri: uri,
            importerLibPath: importerLibPath,
            fileToBarrels: fileToBarrels,
          ) ??
          uri;
      final suffix = migratedUri == uri
          ? (match.namedGroup('suffix') ?? '')
          : '';

      imports.add(
        _ImportLine(
          kind: match.namedGroup('kind')!,
          uri: migratedUri,
          suffix: suffix,
        ),
      );
      continue;
    }

    if (section == 0) {
      header.add(line);
    } else {
      body.add(line);
    }
  }

  final optimizedImports = _optimizeImports(imports);
  return _joinSections(header, optimizedImports, body);
}

String _joinSections(
  List<String> header,
  List<_ImportLine> imports,
  List<String> body,
) {
  while (header.isNotEmpty && header.last.trim().isEmpty) {
    header.removeLast();
  }
  while (body.isNotEmpty && body.first.trim().isEmpty) {
    body.removeAt(0);
  }

  final buffer = StringBuffer();

  if (header.isNotEmpty) {
    buffer.writeln(header.join('\n'));
  }

  if (imports.isNotEmpty) {
    if (buffer.isNotEmpty) buffer.writeln();
    buffer.writeln(imports.map((e) => e.toString()).join('\n'));
  }

  if (body.isNotEmpty) {
    if (buffer.isNotEmpty) buffer.writeln();
    buffer.write(body.join('\n'));
  }

  final result = buffer.toString();
  return result.endsWith('\n') ? result : '$result\n';
}

List<_ImportLine> _optimizeImports(List<_ImportLine> imports) {
  final deduped = <String, _ImportLine>{};

  for (final item in imports) {
    deduped['${item.kind}:${item.uri}'] = item;
  }

  final unique = deduped.values.toList();
  final withoutRedundant = _removeRedundantBarrelImports(unique);

  final packageImports = <_ImportLine>[];
  final projectImports = <_ImportLine>[];
  final otherImports = <_ImportLine>[];

  for (final item in withoutRedundant) {
    if (item.uri.startsWith('package:$packageName/')) {
      projectImports.add(item);
    } else if (item.uri.startsWith('package:') ||
        item.uri.startsWith('dart:')) {
      packageImports.add(item);
    } else {
      otherImports.add(item);
    }
  }

  int compareUri(_ImportLine a, _ImportLine b) => a.uri.compareTo(b.uri);

  packageImports.sort(compareUri);
  projectImports.sort(compareUri);
  otherImports.sort(compareUri);

  return [...packageImports, ...projectImports, ...otherImports];
}

List<_ImportLine> _removeRedundantBarrelImports(List<_ImportLine> imports) {
  final barrels = imports
      .where(
        (item) =>
            item.uri.startsWith('package:$packageName/') &&
            item.uri.endsWith('/$exportFileName'),
      )
      .map((item) => item.uri)
      .toSet();

  if (barrels.length < 2) return imports;

  return imports.where((item) {
    if (!item.uri.startsWith('package:$packageName/') ||
        !item.uri.endsWith('/$exportFileName')) {
      return true;
    }

    for (final other in barrels) {
      if (other == item.uri) continue;
      if (_isParentBarrel(other, item.uri)) return false;
    }

    return true;
  }).toList();
}

bool _isParentBarrel(String parentUri, String childUri) {
  final parentPath = parentUri
      .substring('package:$packageName/'.length)
      .replaceAll('/$exportFileName', '');
  final childPath = childUri
      .substring('package:$packageName/'.length)
      .replaceAll('/$exportFileName', '');

  return childPath.startsWith('$parentPath/');
}

String? _migrateUri({
  required String uri,
  required String importerLibPath,
  required Map<String, Set<String>> fileToBarrels,
}) {
  String? targetLibPath;

  if (uri.startsWith('package:$packageName/')) {
    targetLibPath = '$libRoot/${uri.substring('package:$packageName/'.length)}';
  } else if (uri.startsWith('dart:') || uri.startsWith('package:')) {
    return null;
  } else {
    final importerDir = _parentPath(importerLibPath);
    targetLibPath = _normalizePath(_resolveRelative(importerDir, uri));
    if (!targetLibPath.startsWith('$libRoot/')) return null;
  }

  if (targetLibPath.endsWith('/$exportFileName')) return null;
  if (targetLibPath.contains('/l10n/gen/')) return null;

  final barrel = _barrelForImport(
    importerLibPath: importerLibPath,
    targetLibPath: targetLibPath,
    fileToBarrels: fileToBarrels,
  );

  if (barrel == null) return null;

  final packageUri =
      'package:$packageName/${barrel.substring('$libRoot/'.length)}';
  if (uri == packageUri) return null;

  return packageUri;
}

String? _barrelForImport({
  required String importerLibPath,
  required String targetLibPath,
  required Map<String, Set<String>> fileToBarrels,
}) {
  var dir = _isDirectoryPath(targetLibPath)
      ? targetLibPath
      : _parentPath(targetLibPath);

  while (dir == libRoot || dir.startsWith('$libRoot/')) {
    final barrelPath = '$dir/$exportFileName';
    if (File(barrelPath).existsSync()) {
      final barrelsForImporter = fileToBarrels[importerLibPath] ?? {};
      if (!barrelsForImporter.contains(barrelPath)) {
        return barrelPath;
      }
    }

    if (dir == libRoot) break;
    dir = _parentPath(dir);
  }

  return null;
}

Map<String, Set<String>> _buildFileToBarrelsIndex() {
  final result = <String, Set<String>>{};

  for (final exportFile
      in Directory(libRoot)
          .listSync(recursive: true)
          .whereType<File>()
          .where((f) => _fileName(f) == exportFileName)) {
    final barrelPath = _normalizePath(exportFile.path);
    final exportedFiles = _collectExportedFiles(barrelPath, <String>{});

    for (final exportedFile in exportedFiles) {
      result.putIfAbsent(exportedFile, () => <String>{}).add(barrelPath);
    }
  }

  return result;
}

Set<String> _collectExportedFiles(
  String barrelPath,
  Set<String> visitedBarrels,
) {
  if (!visitedBarrels.add(barrelPath)) return {};

  final dir = _parentPath(barrelPath);
  final result = <String>{};
  final content = File(barrelPath).readAsStringSync();
  final exportRegex = RegExp(
    r'''^export\s+['"]([^'"]+)['"]''',
    multiLine: true,
  );

  for (final match in exportRegex.allMatches(content)) {
    final target = match.group(1)!;
    if (target.endsWith('/$exportFileName')) {
      final childBarrel = _normalizePath('$dir/$target');
      result.addAll(_collectExportedFiles(childBarrel, visitedBarrels));
    } else {
      result.add(_normalizePath('$dir/$target'));
    }
  }

  return result;
}

bool _isPartFile(File file) {
  final lines = file.readAsLinesSync();
  if (lines.isEmpty) return false;
  return lines.first.trim().startsWith('part of');
}

bool _isDirectoryPath(String path) => !path.endsWith('.dart');

String _parentPath(String path) {
  final parts = path.split('/').where((s) => s.isNotEmpty).toList();
  if (parts.length <= 1) return path;
  return parts.sublist(0, parts.length - 1).join('/');
}

String _fileName(File file) {
  return _normalizePath(file.path).split('/').where((s) => s.isNotEmpty).last;
}

String _normalizePath(String path) {
  final parts = <String>[];
  for (final part in path.replaceAll('\\', '/').split('/')) {
    if (part.isEmpty || part == '.') continue;
    if (part == '..') {
      if (parts.isNotEmpty) parts.removeLast();
      continue;
    }
    parts.add(part);
  }
  return parts.join('/');
}

String _resolveRelative(String baseDir, String relativePath) {
  return _normalizePath('$baseDir/$relativePath');
}

class _ImportLine {
  const _ImportLine({
    required this.kind,
    required this.uri,
    required this.suffix,
  });

  final String kind;
  final String uri;
  final String suffix;

  @override
  String toString() => "$kind '$uri'$suffix;";
}
