import 'package:flutter_test/flutter_test.dart';
import 'package:zeleno_v2/features/garden_plants/data/dto/create_garden_plant_body.dart';
import 'package:zeleno_v2/features/garden_plants/data/dto/update_garden_plant_body.dart';

void main() {
  group('CreateGardenPlantBody', () {
    test('toJson uses snake_case keys from the API contract', () {
      const CreateGardenPlantBody body = CreateGardenPlantBody(
        speciesId: 42,
        customName: 'Мой фикус',
        roomId: 3,
      );

      expect(body.toJson(), <String, dynamic>{
        'species_id': 42,
        'custom_name': 'Мой фикус',
        'room_id': 3,
      });
    });

    test('keeps room_id key when it is null', () {
      const CreateGardenPlantBody body = CreateGardenPlantBody(
        speciesId: 42,
        customName: 'Мой фикус',
        roomId: null,
      );

      expect(body.toJson()['room_id'], isNull);
      expect(body.toJson().containsKey('room_id'), isTrue);
    });
  });

  group('UpdateGardenPlantBody', () {
    test('toJson maps every field to its snake_case key', () {
      const UpdateGardenPlantBody body = UpdateGardenPlantBody(
        customName: 'Мой фикус',
        roomId: 3,
        sunlightExposure: 'bright',
        plantSize: 'medium',
        potSizeMm: 120,
        lastWatering: 'week',
        lastWateringExactDate: '2026-06-01',
        lastRepotting: 'month',
        lastRepottingExactDate: '2026-05-01',
      );

      expect(body.toJson(), <String, dynamic>{
        'custom_name': 'Мой фикус',
        'room_id': 3,
        'sunlight_exposure': 'bright',
        'plant_size': 'medium',
        'pot_size_mm': 120,
        'last_watering': 'week',
        'last_watering_exact_date': '2026-06-01',
        'last_repotting': 'month',
        'last_repotting_exact_date': '2026-05-01',
      });
    });

    test('preserves null optional fields as present keys', () {
      const UpdateGardenPlantBody body = UpdateGardenPlantBody(
        customName: 'Мой фикус',
        roomId: null,
        sunlightExposure: null,
        plantSize: null,
        potSizeMm: null,
        lastWatering: null,
        lastWateringExactDate: null,
        lastRepotting: null,
        lastRepottingExactDate: null,
      );

      final Map<String, dynamic> json = body.toJson();
      expect(json['custom_name'], 'Мой фикус');
      expect(json.containsKey('sunlight_exposure'), isTrue);
      expect(json['sunlight_exposure'], isNull);
      expect(json['pot_size_mm'], isNull);
    });
  });
}
