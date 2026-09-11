import 'package:flutter/material.dart';
import 'package:zeleno_v2/features/core/widgets/export.dart';
import 'package:zeleno_v2/features/plant_search/domain/models/export.dart';
import 'package:zeleno_v2/l10n/export.dart';

class PlantItemWidget extends StatelessWidget {
  final PlantSearchItem item;

  const PlantItemWidget({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return PlantCardWidget(
      title: item.latinName ?? context.l10n.unknownName,
      imageUrl: item.imageUrl,
    );
  }
}
