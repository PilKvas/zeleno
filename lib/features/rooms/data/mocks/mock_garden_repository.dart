import 'package:zeleno_v2/features/rooms/domain/models/garden_model.dart';
import 'package:zeleno_v2/features/rooms/domain/models/garden_plants_response.dart';
import 'package:zeleno_v2/features/rooms/domain/repository/i_garden_repository.dart';

class MockGardenPlantRepository implements IGardenPlantRepository {
  final List<GardenPlantsResponse> _mockPlants = [
    const GardenPlantsResponse(
      id: 1,
      latinName: 'Monstera Deliciosa',
      customName: 'Монстера',
    ),
    const GardenPlantsResponse(
      id: 2,
      latinName: 'Sansevieria Trifasciata',
      customName: 'Тещин язык',
    ),
    const GardenPlantsResponse(
      id: 3,
      latinName: 'Spathiphyllum Wallisii',
      customName: 'Спатифиллум',
    ),
  ];

  @override
  Future<void> createGardenPlant({required GardenModel gardenModel}) async {
    // Mock implementation
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Future<List<GardenPlantsResponse>> getGardenPlantsList({int? roomId}) async {
    // Mock implementation
    await Future.delayed(const Duration(milliseconds: 500));
    return _mockPlants;
  }

  @override
  Future<void> deletePlanFromGarden({required String uid}) async {
    // Mock implementation
    await Future.delayed(const Duration(milliseconds: 500));
  }
}
