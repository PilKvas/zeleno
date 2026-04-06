import 'package:zeleno_v2/features/plant_details/domain/models/plant_details_model.dart';
import 'package:zeleno_v2/features/plant_details/domain/reposiotory/i_plant_details_repository.dart';

class MockPlantDetailsRepository implements IPlantDetailsRepository {
  @override
  Future<PlantDetailsModel> getPlant(String slug) async {
    throw UnimplementedError();
  }
}
