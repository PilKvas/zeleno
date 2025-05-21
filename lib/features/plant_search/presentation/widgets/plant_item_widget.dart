import 'package:flutter/material.dart';
import 'package:zeleno_v2/features/plant_search/domain/models/plant_search_item.dart';
import 'package:zeleno_v2/resources/resources.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';
import 'package:zeleno_v2/uikit/theme/typography.dart';

class PlantItemWidget extends StatelessWidget {
  final PlantSearchItem item;

  const PlantItemWidget({
    required this.item,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = ZTypography.of(context);
    final colors = ZColorScheme.of(context);
    return Row(
      children: [
        Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              child: SizedBox(
                height: 171,
                width: 136,
                child: Image.network(
                  fit: BoxFit.cover,
                  item.imageUrl ?? '',
                  errorBuilder: (_, __, ___) {
                    return Image.asset(ZImages.dryTree, width: 50, height: 50);
                  },
                  // loadingBuilder: (_, __, ___) {
                  //   return Shimmer.fromColors(
                  //     baseColor: Colors.grey,
                  //     highlightColor: colors.surface,
                  //     child: ClipRRect(
                  //       borderRadius: const BorderRadius.only(
                  //         topLeft: Radius.circular(10),
                  //         bottomLeft: Radius.circular(10),
                  //       ),
                  //       child: Container(
                  //         height: 171,
                  //         width: 136,
                  //         decoration: const BoxDecoration(
                  //           color: Colors.grey,
                  //         ),
                  //       ),
                  //     ),
                  //   );
                  // },
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 171,
          padding: const EdgeInsets.only(
            left: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  item.mainCommonName ??
                      "No name", // TODO(darbinyan): Вынести в локализацию
                  style: textTheme.title, // TODO(darbinyan): Вынести в тему,
                ),
              ),
              Flexible(
                child: Text(item.latinName ?? 'null', style: textTheme.body),
              ),
            ],
          ),
        )
      ],
    );
  }
}
