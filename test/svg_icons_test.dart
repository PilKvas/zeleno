import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:zeleno_v2/resources/resources.dart';

void main() {
  test('svg_icons assets test', () {
    expect(File(SvgIcons.calender).existsSync(), isTrue);
    expect(File(SvgIcons.search).existsSync(), isTrue);
    expect(File(SvgIcons.user).existsSync(), isTrue);
    expect(File(SvgIcons.userFilled).existsSync(), isTrue);
    expect(File(SvgIcons.eye).existsSync(), isTrue);
    expect(File(SvgIcons.height).existsSync(), isTrue);
    expect(File(SvgIcons.openEye).existsSync(), isTrue);
    expect(File(SvgIcons.photoPlaceholder).existsSync(), isTrue);
    expect(File(SvgIcons.plant).existsSync(), isTrue);
    expect(File(SvgIcons.plantFilled).existsSync(), isTrue);
    expect(File(SvgIcons.searchFilled).existsSync(), isTrue);
    expect(File(SvgIcons.testSvg).existsSync(), isTrue);
    expect(File(SvgIcons.time).existsSync(), isTrue);
    expect(File(SvgIcons.width).existsSync(), isTrue);
  });
}
