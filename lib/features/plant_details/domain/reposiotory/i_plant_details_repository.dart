import 'package:zeleno_v2/features/plant_details/domain/models/plant_details_model.dart';

abstract class IPlantDetailsRepository {
  Future<PlantDetailsModel> getPlant(String slug);
}
