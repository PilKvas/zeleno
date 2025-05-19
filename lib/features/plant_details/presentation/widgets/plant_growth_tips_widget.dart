import 'package:flutter/material.dart';
import 'package:zeleno_v2/features/plant_details/domain/models/plant_details_model.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

class PlantGrowthTipsWidget extends StatelessWidget {
  final GrowthTips tips;

  const PlantGrowthTipsWidget({
    super.key,
    required this.tips,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = ZTypography.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Советы по выращиванию",
          style: textTheme.title.copyWith(fontSize: 20),
        ),
        const SizedBox(height: 8),
        if (tips.propagation!.isNotEmpty)
          _buildList("Размножение", tips.propagation!),
        if (tips.pruning!.isNotEmpty) 
          _buildList("Обрезка", tips.pruning!),
        if (tips.suggestedPantingPlaces!.isNotEmpty)
          _buildList("Рекомендуемые места посадки", tips.suggestedPantingPlaces!),
      ],
    );
  }

  Widget _buildList(String title, List<dynamic> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        ...items
            .map((item) => Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("• ", style: TextStyle(fontWeight: FontWeight.bold)),
                      Expanded(child: Text("$item")),
                    ],
                  ),
                ))
            .toList(),
        const SizedBox(height: 8),
      ],
    );
  }
} 