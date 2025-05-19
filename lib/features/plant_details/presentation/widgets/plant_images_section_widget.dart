import 'package:flutter/material.dart';
import 'package:zeleno_v2/features/plant_details/domain/models/plant_details_model.dart';

class PlantImagesSectionWidget extends StatelessWidget {
  final Images images;

  const PlantImagesSectionWidget({
    super.key,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    final allImages = [
      ...images.bark ?? [],
      ...images.fruit ?? [],
      ...images.flower ?? [],
      ...images.habit ?? [],
      ...images.leaf ?? [],
      ...images.other ?? [],
      ...images.root ?? [],
      ...images.stem ?? [],
      ...images.seed ?? [],
      ...images.tuber ?? [],
      ...images.foliage ?? [],
    ].toList();

    if (allImages.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Изображения",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: allImages.length,
            separatorBuilder: (_, __) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  allImages[index].imageUrl ?? '',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
} 