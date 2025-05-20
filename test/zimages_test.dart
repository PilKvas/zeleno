import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:zeleno_v2/resources/resources.dart';

void main() {
  test('zimages assets test', () {
    expect(File(ZImages.fromSeed).existsSync(), isTrue);
    expect(File(ZImages.dryTree).existsSync(), isTrue);
    expect(File(ZImages.woollyBee).existsSync(), isTrue);
    expect(File(ZImages.woollyCactus).existsSync(), isTrue);
    expect(File(ZImages.woollyPlant412).existsSync(), isTrue);
    expect(File(ZImages.woollyPlant421).existsSync(), isTrue);
    expect(File(ZImages.woollyPlantMom11).existsSync(), isTrue);
    expect(File(ZImages.woollyTakingCareOfPlants22).existsSync(), isTrue);
    expect(File(ZImages.woollyTakingCareOfPlants31).existsSync(), isTrue);
  });
}
