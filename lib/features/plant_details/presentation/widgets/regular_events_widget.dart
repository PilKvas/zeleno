import 'package:flutter/material.dart';
import 'package:zeleno_v2/features/plant_details/domain/models/plant_details_model.dart';

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
      children: [
        Text(
          'Регулярные события',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ...events.map((event) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                  '${event.name}: каждые ${event.frequency?.fromValue}-${event.frequency?.toValue} ${event.frequencyUnit?.label}'),
            )),
      ],
    );
  }
} 