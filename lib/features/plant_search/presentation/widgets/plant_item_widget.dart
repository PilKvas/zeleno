import 'package:flutter/material.dart';
import 'package:zeleno_v2/features/core/widgets/export.dart';
import 'package:zeleno_v2/features/plant_search/domain/models/export.dart';
import 'package:zeleno_v2/l10n/export.dart';

class PlantItemWidget extends StatelessWidget {
  final PlantSearchItem item;
  final VoidCallback? onTap;

  const PlantItemWidget({required this.item, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    // Заголовок — обычное название; латинское уходит в подзаголовок,
    // если только оно не единственное, что есть.
    final String? commonName = item.mainCommonName;
    final String? latinName = item.latinName;
    final String title = commonName?.isNotEmpty == true
        ? commonName!
        : latinName ?? context.l10n.unknownName;
    return PlantCardWidget(
      title: title,
      subtitle: title == latinName ? null : latinName,
      imageUrl: item.imageUrl,
      onTap: onTap,
    );
  }
}
