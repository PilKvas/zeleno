import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:zeleno_v2/resources/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

// Геометрия карточки и её шиммера должна совпадать, иначе список прыгает
// при подмене заглушек реальными данными — поэтому оба виджета лежат здесь
// и читают одни и те же размеры.
const double _kImageSize = 104;
const double _kCardPadding = 8;
const double _kCardHeight = _kImageSize + _kCardPadding * 2;
const double _kTextGap = 14;
const BorderRadius _kCardBorderRadius = BorderRadius.all(Radius.circular(16));
const BorderRadius _kImageBorderRadius = BorderRadius.all(Radius.circular(12));

/// Общая карточка растения: один вид в поиске и в «Моём саду».
///
/// [subtitle] — латинское название; набирается курсивом, как принято
/// в ботанике.
class PlantCardWidget extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? imageUrl;
  final VoidCallback? onTap;

  const PlantCardWidget({
    required this.title,
    required this.imageUrl,
    this.subtitle,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    final String? subtitle = this.subtitle;
    return Material(
      color: colors.surface,
      borderRadius: _kCardBorderRadius,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: _kCardHeight,
          child: Padding(
            padding: const EdgeInsets.all(_kCardPadding),
            child: Row(
              children: [
                _PlantCardImage(url: imageUrl),
                const SizedBox(width: _kTextGap),
                Expanded(
                  child: Column(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        title,
                        maxLines: 2,
                        overflow: .ellipsis,
                        style: typography.title.copyWith(
                          fontWeight: FontWeight.w600,
                          color: colors.onSurface,
                        ),
                      ),
                      if (subtitle != null && subtitle.isNotEmpty) ...[
                        const SizedBox(height: 4),
                        Text(
                          subtitle,
                          maxLines: 1,
                          overflow: .ellipsis,
                          style: typography.body.copyWith(
                            fontStyle: FontStyle.italic,
                            color: colors.secondaryText,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                if (onTap != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Icon(
                      Icons.chevron_right_rounded,
                      color: colors.secondaryText.withValues(alpha: 0.6),
                    ),
                  ),
              ],
            ),
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
    // Фон карточки снаружи шиммера, иначе он тоже уходит в переливы.
    return Container(
      height: _kCardHeight,
      padding: const EdgeInsets.all(_kCardPadding),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: _kCardBorderRadius,
      ),
      child: Shimmer.fromColors(
        baseColor: baseColor,
        highlightColor: colors.background,
        child: Row(
          children: [
            Container(
              height: _kImageSize,
              width: _kImageSize,
              decoration: BoxDecoration(
                color: baseColor,
                borderRadius: _kImageBorderRadius,
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
      child: SizedBox.square(
        dimension: _kImageSize,
        // Однотонная подложка держит место картинки, поэтому после загрузки
        // не проскакивает белый кадр.
        child: ColoredBox(
          color: colors.background,
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
    const double size = 40;
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
    const double titleHeight = 18;
    const double subtitleHeight = 14;
    const double subtitleWidth = 120;
    return Column(
      mainAxisAlignment: .center,
      crossAxisAlignment: .start,
      children: [
        _ShimmerBar(color: color, width: 170, height: titleHeight),
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
