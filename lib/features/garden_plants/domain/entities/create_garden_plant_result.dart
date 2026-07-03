import 'package:zeleno_v2/features/garden_plants/domain/models/export.dart';

class CreateGardenPlantResult {
  const CreateGardenPlantResult({
    required this.plant,
    this.imageUploadFailed = false,
  });

  final GardenPlantModel plant;
  final bool imageUploadFailed;
}
