import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:zeleno_v2/features/plant_search/domain/models/export.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/resources/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

const double _kItemHeight = 171;
const double _kImageWidth = 136;
const double _kTextGap = 12;

class PlantItemWidget extends StatelessWidget {
  final PlantSearchItem item;

  const PlantItemWidget({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = ZTypography.of(context);
    return SizedBox(
      height: _kItemHeight,
      child: Row(
        children: [
          _PlantImage(url: item.imageUrl),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: _kTextGap),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  item.latinName ?? context.l10n.unknownName,
                  style: textTheme.title,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlantItemShimmer extends StatelessWidget {
  const PlantItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    final Color baseColor = Color.alphaBlend(
      colors.secondaryText.withValues(alpha: 0.22),
      colors.background,
    );
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: colors.surface,
      child: SizedBox(
        height: _kItemHeight,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: _kImageBorderRadius,
              child: Container(
                height: _kItemHeight,
                width: _kImageWidth,
                color: baseColor,
              ),
            ),
            const SizedBox(width: _kTextGap),
            Expanded(child: _ShimmerTextLines(color: baseColor)),
          ],
        ),
      ),
    );
  }
}

const BorderRadius _kImageBorderRadius = BorderRadius.only(
  topLeft: Radius.circular(10),
  bottomLeft: Radius.circular(10),
);

class _PlantImage extends StatelessWidget {
  final String? url;

  const _PlantImage({required this.url});

  @override
  Widget build(BuildContext context) {
    const Duration fadeDuration = Duration(milliseconds: 250);
    final ZColorScheme colors = ZColorScheme.of(context);
    final String? imageUrl = url;
    return ClipRRect(
      borderRadius: _kImageBorderRadius,
      child: SizedBox(
        height: _kItemHeight,
        width: _kImageWidth,
        // Однотонная подложка держит место картинки, поэтому после загрузки
        // не проскакивает белый кадр.
        child: ColoredBox(
          color: colors.surface,
          child: imageUrl == null || imageUrl.isEmpty
              ? const _PlantImageFallback()
              : CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.cover,
                  fadeInDuration: fadeDuration,
                  // Без кросс-фейда: подложка уже держит место картинки.
                  fadeOutDuration: Duration.zero,
                  placeholder: (_, __) => const SizedBox.shrink(),
                  errorWidget: (_, __, ___) => const _PlantImageFallback(),
                ),
        ),
      ),
    );
  }
}

class _PlantImageFallback extends StatelessWidget {
  const _PlantImageFallback();

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(ZImages.dryTree, width: 50, height: 50));
  }
}

class _ShimmerTextLines extends StatelessWidget {
  final Color color;

  const _ShimmerTextLines({required this.color});

  @override
  Widget build(BuildContext context) {
    const double titleHeight = 20;
    const double subtitleHeight = 16;
    const double subtitleWidth = 150;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _ShimmerBar(color: color, width: double.infinity, height: titleHeight),
        const SizedBox(height: 8),
        _ShimmerBar(color: color, width: subtitleWidth, height: subtitleHeight),
      ],
    );
  }
}

class _ShimmerBar extends StatelessWidget {
  final Color color;
  final double width;
  final double height;

  const _ShimmerBar({
    required this.color,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
