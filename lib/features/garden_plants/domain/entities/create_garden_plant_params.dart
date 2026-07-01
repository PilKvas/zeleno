import 'dart:typed_data';

class CreateGardenPlantParams {
  const CreateGardenPlantParams({
    required this.speciesId,
    required this.customName,
    required this.roomId,
    this.photoBytes,
    this.photoFileName,
  });

  final int speciesId;
  final String customName;
  final int roomId;
  final Uint8List? photoBytes;
  final String? photoFileName;
}
