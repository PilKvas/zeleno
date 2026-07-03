import 'package:zeleno_v2/features/plant_filters/domain/models/export.dart';

abstract interface class IPlantFiltersRepository {
  Future<List<PlantFilterItem>> getPlantSoilPh();

  Future<List<PlantFilterItem>> getPlantSoilMoisture();
}
