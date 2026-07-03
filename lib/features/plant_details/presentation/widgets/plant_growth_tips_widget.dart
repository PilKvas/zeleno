import 'package:flutter/material.dart';
import 'package:zeleno_v2/features/plant_details/domain/models/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

class PlantGrowthTipsWidget extends StatelessWidget {
  final List<GrowthTip> tips;

  const PlantGrowthTipsWidget({
    super.key,
    required this.tips,
  });

  static const Map<String, String> _tipTypeLabels = <String, String>{
    'propagation': 'Размножение',
    'suggested-planting-places': 'Рекомендуемые места посадки',
    'pruning': 'Обрезка',
  };

  @override
  Widget build(BuildContext context) {
    final textTheme = ZTypography.of(context);
    final Map<String, List<String>> byType = <String, List<String>>{};
    for (final GrowthTip tip in tips) {
      final String? name = tip.name;
      if (name == null || name.isEmpty) {
        continue;
      }
      final String key = tip.tipType ?? 'other';
      byType.putIfAbsent(key, () => <String>[]).add(name);
    }
    if (byType.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Советы по выращиванию',
          style: textTheme.title.copyWith(fontSize: 20),
        ),
        const SizedBox(height: 8),
        ...byType.entries.map((MapEntry<String, List<String>> entry) {
          final String title =
              _tipTypeLabels[entry.key] ?? entry.key.replaceAll('-', ' ');
          return _buildList(title, entry.value);
        }),
      ],
    );
  }

  Widget _buildList(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        ...items.map(
          (String item) => Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text('• ', style: TextStyle(fontWeight: FontWeight.bold)),
                Expanded(child: Text(item)),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
