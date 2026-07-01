import 'package:flutter/material.dart';
import 'package:zeleno_v2/features/plant_details/domain/models/plant_details_model.dart';

/// New API exposes [latinName] and [misc] (rank, year) instead of full taxonomy.
class ScientificClassificationWidget extends StatelessWidget {
  final String? latinName;
  final PlantMisc? misc;

  const ScientificClassificationWidget({
    super.key,
    required this.latinName,
    required this.misc,
  });

  @override
  Widget build(BuildContext context) {
    if (latinName == null && misc?.rank == null && misc?.year == null) {
      return const SizedBox.shrink();
    }
    return Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(2),
      },
      children: <TableRow>[
        if (latinName != null) _buildTableRow('Латинское название', latinName!),
        if (misc?.rank != null) _buildTableRow('Ранг', misc!.rank ?? ''),
        if (misc?.year != null) _buildTableRow('Год', misc!.year.toString()),
      ],
    );
  }

  TableRow _buildTableRow(String label, String value) {
    return TableRow(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(label),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(value),
        ),
      ],
    );
  }
}
