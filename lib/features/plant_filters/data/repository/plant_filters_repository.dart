import 'package:zeleno_v2/features/plant_filters/data/dto/plant_filter_item_dto.dart';
import 'package:zeleno_v2/features/plant_filters/data/service/plant_filters_service.dart';
import 'package:zeleno_v2/features/plant_filters/domain/models/plant_filter_item.dart';
import 'package:zeleno_v2/features/plant_filters/domain/repository/i_plant_filters_repository.dart';

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
