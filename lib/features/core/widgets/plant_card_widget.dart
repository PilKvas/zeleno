import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:zeleno_v2/resources/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

// Геометрия карточки и её шиммера должна совпадать, иначе список прыгает
// при подмене заглушек реальными данными — поэтому оба виджета лежат здесь
// и читают одни и те же размеры.
const double _kCardHeight = 171;
const double _kImageWidth = 136;
const double _kTextGap = 12;
const BorderRadius _kImageBorderRadius = BorderRadius.only(
  topLeft: Radius.circular(10),
  bottomLeft: Radius.circular(10),
);

/// Общая карточка растения: один вид в поиске и в «Моём саду».
class PlantCardWidget extends StatelessWidget {
  final String title;
  final String? imageUrl;
  final VoidCallback? onTap;

  const PlantCardWidget({
    required this.title,
    required this.imageUrl,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const int titleMaxLines = 2;
    final ZTypography typography = ZTypography.of(context);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          height: _kCardHeight,
          child: Row(
            children: [
              _PlantCardImage(url: imageUrl),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: _kTextGap),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      title,
                      maxLines: titleMaxLines,
                      overflow: .ellipsis,
                      style: typography.title,
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

/// Заглушка карточки на время загрузки списка.
class PlantCardShimmer extends StatelessWidget {
  const PlantCardShimmer({super.key});

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
        height: _kCardHeight,
        child: Row(
          crossAxisAlignment: .start,
          children: [
            ClipRRect(
              borderRadius: _kImageBorderRadius,
              child: Container(
                height: _kCardHeight,
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

class _PlantCardImage extends StatelessWidget {
  final String? url;

  const _PlantCardImage({required this.url});

  @override
  Widget build(BuildContext context) {
    const Duration fadeDuration = Duration(milliseconds: 250);
    final ZColorScheme colors = ZColorScheme.of(context);
    final String? imageUrl = url;
    return ClipRRect(
      borderRadius: _kImageBorderRadius,
      child: SizedBox(
        height: _kCardHeight,
        width: _kImageWidth,
        // Однотонная подложка держит место картинки, поэтому после загрузки
        // не проскакивает белый кадр.
        child: ColoredBox(
          color: colors.surface,
          child: imageUrl == null || imageUrl.isEmpty
              ? const _PlantCardFallback()
              : CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: .cover,
                  fadeInDuration: fadeDuration,
                  // Без кросс-фейда: подложка уже держит место картинки.
                  fadeOutDuration: Duration.zero,
                  placeholder: (_, __) => const SizedBox.shrink(),
                  errorWidget: (_, __, ___) => const _PlantCardFallback(),
                ),
        ),
      ),
    );
  }
}

class _PlantCardFallback extends StatelessWidget {
  const _PlantCardFallback();

  @override
  Widget build(BuildContext context) {
    const double size = 50;
    return Center(
      child: Image.asset(ZImages.dryTree, width: size, height: size),
    );
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
      crossAxisAlignment: .start,
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
