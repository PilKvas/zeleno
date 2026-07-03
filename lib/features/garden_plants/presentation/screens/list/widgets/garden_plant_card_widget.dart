import 'package:flutter/material.dart';
import 'package:zeleno_v2/features/garden_plants/domain/models/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

class GardenPlantCardWidget extends StatelessWidget {
  const GardenPlantCardWidget({
    super.key,
    required this.plant,
    this.onTap,
  });

  final GardenPlantModel plant;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colorScheme = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          height: 130,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  width: 130,
                  height: 130,
                  child: plant.imageUrl != null
                      ? Image.network(
                          plant.imageUrl!,
                          fit: BoxFit.cover,
                          errorBuilder: (
                            BuildContext context,
                            Object error,
                            StackTrace? stackTrace,
                          ) =>
                              _PlantPlaceholder(colorScheme: colorScheme),
                        )
                      : _PlantPlaceholder(colorScheme: colorScheme),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    plant.customName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: typography.headline400.copyWith(
                      color: colorScheme.onBackground,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PlantPlaceholder extends StatelessWidget {
  const _PlantPlaceholder({required this.colorScheme});

  final ZColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: colorScheme.secondaryBg,
      child: Icon(
        Icons.local_florist_outlined,
        color: colorScheme.brand,
        size: 40,
      ),
    );
  }
}
