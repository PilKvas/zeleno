import 'package:flutter/material.dart';
import 'package:zeleno_v2/features/core/widgets/export.dart';
import 'package:zeleno_v2/features/garden_plants/domain/models/export.dart';

class GardenPlantCardWidget extends StatelessWidget {
  const GardenPlantCardWidget({super.key, required this.plant, this.onTap});

  final GardenPlantModel plant;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return PlantCardWidget(
      title: plant.customName,
      subtitle: plant.speciesLatinName,
      imageUrl: plant.imageUrl,
      onTap: onTap,
    );
  }
}
