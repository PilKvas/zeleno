import 'package:flutter/material.dart';
import 'package:zeleno_v2/features/plant_details/domain/models/plant_details_model.dart';

class ScientificClassificationWidget extends StatelessWidget {
  final ScientificClassification? classification;

  const ScientificClassificationWidget({
    super.key,
    required this.classification,
  });

  @override
  Widget build(BuildContext context) {
    if (classification == null) return const SizedBox.shrink();

    return Table(
      columnWidths: const {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(2),
      },
      children: [
        _buildTableRow('Семейство', classification!.family ?? 'Вересковые'),
        _buildTableRow('Отдел', classification!.orders?.join(', ') ?? 'Цветковые'),
        _buildTableRow('Род', classification!.genus ?? 'Рододендрон'),
        _buildTableRow('Класс', classification!.classify ?? 'Двудольные'),
      ],
    );
  }

  TableRow _buildTableRow(String label, String value) {
    return TableRow(
      children: [
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