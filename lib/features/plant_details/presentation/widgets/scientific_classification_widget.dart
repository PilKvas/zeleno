import 'package:flutter/material.dart';
import 'package:zeleno_v2/features/plant_details/domain/models/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

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
    final ZColorScheme colors = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    final TextStyle labelStyle = typography.body.copyWith(
      color: colors.onBackground.withValues(alpha: 0.6),
    );
    final TextStyle valueStyle = typography.body.copyWith(
      color: colors.onBackground,
    );
    return Table(
      columnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <TableRow>[
        if (latinName != null)
          _buildTableRow(
            'Латинское название',
            latinName!,
            labelStyle,
            valueStyle,
          ),
        if (misc?.rank != null)
          _buildTableRow('Ранг', misc!.rank ?? '', labelStyle, valueStyle),
        if (misc?.year != null)
          _buildTableRow('Год', misc!.year.toString(), labelStyle, valueStyle),
      ],
    );
  }

  TableRow _buildTableRow(
    String label,
    String value,
    TextStyle labelStyle,
    TextStyle valueStyle,
  ) {
    return TableRow(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 4, bottom: 4, right: 16),
          child: Text(label, style: labelStyle),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(value, style: valueStyle),
        ),
      ],
    );
  }
}
