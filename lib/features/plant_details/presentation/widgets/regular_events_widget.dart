import 'package:flutter/material.dart';
import 'package:zeleno_v2/features/plant_details/domain/models/export.dart';

class RegularEventsWidget extends StatelessWidget {
  final List<RegularEvent> events;

  const RegularEventsWidget({
    super.key,
    required this.events,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Регулярные события',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ...events.map((RegularEvent event) {
          final String name = event.name ?? '';
          final int? min = event.intervalMin;
          final int? max = event.intervalMax;
          final String? unit = event.intervalUnit;
          final String line = (min != null && max != null && unit != null)
              ? '$name: каждые $min–$max $unit'
              : name;
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(line),
          );
        }),
      ],
    );
  }
}
