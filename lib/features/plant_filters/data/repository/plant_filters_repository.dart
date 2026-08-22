import 'package:zeleno_v2/features/plant_filters/data/dto/export.dart';
import 'package:zeleno_v2/features/plant_filters/data/service/export.dart';
import 'package:zeleno_v2/features/plant_filters/domain/models/export.dart';
import 'package:zeleno_v2/features/plant_filters/domain/repository/export.dart';

final class PlantFiltersRepository implements IPlantFiltersRepository {
  final PlantFiltersService _plantFiltersService;

  PlantFiltersRepository({
    required PlantFiltersService plantFiltersService,
  }) : _plantFiltersService = plantFiltersService;

  @override
  Future<List<PlantFilterItem>> getPlantSoilMoisture() async {
    return _toModels(await _plantFiltersService.getPlantsSoilMoisture());
  }

  @override
  Future<List<PlantFilterItem>> getPlantSoilPh() async {
    return _toModels(await _plantFiltersService.getPlantsSoilPh());
  }

  List<PlantFilterItem> _toModels(List<PlantFilterItemDto> dtos) {
    return dtos
        .map((PlantFilterItemDto dto) => dto.toModel())
        .whereType<PlantFilterItem>()
        .toList();
  }
}
