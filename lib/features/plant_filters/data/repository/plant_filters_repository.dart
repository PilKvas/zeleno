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
    final List<PlantFilterItemDto> response =
        await _plantFiltersService.getPlantsSoilMoisture();
    return response.map((PlantFilterItemDto dto) => dto.toModel()).toList();
  }

  @override
  Future<List<PlantFilterItem>> getPlantSoilPh() async {
    final List<PlantFilterItemDto> response =
        await _plantFiltersService.getPlantsSoilPh();
    return response.map((PlantFilterItemDto dto) => dto.toModel()).toList();
  }
}
