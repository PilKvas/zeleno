import 'package:flutter/material.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

const double _kMinHeroHeight = 280;
const double _kMaxHeroHeight = 420;
const double _kSheetEdgeHeight = 20;
const double _kScrimHeight = 140;

/// Растягиваемый аппбар с фото: при сворачивании фото уезжает с параллаксом,
/// а в тулбаре проявляется название растения.
class GardenPlantHeroAppBar extends StatelessWidget {
  const GardenPlantHeroAppBar({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.onBack,
    this.onSettings,
  });

  final String title;
  final String? imageUrl;
  final VoidCallback onBack;

  /// null — кнопки настроек нет (режим каталога).
  final VoidCallback? onSettings;

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    final ZTypography typography = ZTypography.of(context);
    final double topPadding = MediaQuery.paddingOf(context).top;
    final double expandedHeight = (MediaQuery.sizeOf(context).height * 0.42)
        .clamp(_kMinHeroHeight, _kMaxHeroHeight);
    final double collapsedHeight =
        topPadding + kToolbarHeight + _kSheetEdgeHeight;
    return SliverAppBar(
      pinned: true,
      stretch: true,
      expandedHeight: expandedHeight,
      backgroundColor: colors.background,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      leadingWidth: 64,
      leading: _RoundIconButton(
        icon: Icons.chevron_left,
        color: colors.onSurface,
        onPressed: onBack,
        margin: const EdgeInsets.only(left: 8),
      ),
      actions: <Widget>[
        if (onSettings != null)
          _RoundIconButton(
            icon: Icons.settings_outlined,
            color: colors.brand,
            onPressed: onSettings,
            margin: const EdgeInsets.only(right: 8),
          ),
      ],
      flexibleSpace: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double expandRatio =
              ((constraints.maxHeight - collapsedHeight) /
                      (expandedHeight - collapsedHeight))
                  .clamp(0.0, 1.0);
          // Название проявляется на последних 15% сворачивания — когда фото
          // уже почти скрыто за тулбаром.
          final double titleOpacity = ((1 - expandRatio - 0.85) / 0.15).clamp(
            0.0,
            1.0,
          );
          return Stack(
            fit: .expand,
            children: <Widget>[
              FlexibleSpaceBar(
                collapseMode: .parallax,
                stretchModes: const <StretchMode>[.zoomBackground],
                background: Stack(
                  fit: .expand,
                  children: <Widget>[
                    _PlantImage(imageUrl: imageUrl),
                    const _TopScrim(),
                  ],
                ),
              ),
              Positioned(
                top: topPadding,
                left: 72,
                right: 72,
                height: kToolbarHeight,
                child: IgnorePointer(
                  child: Opacity(
                    opacity: titleOpacity,
                    child: Align(
                      alignment: .centerLeft,
                      child: Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: typography.headline400.copyWith(
                          color: colors.onBackground,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(_kSheetEdgeHeight),
        child: Container(
          height: _kSheetEdgeHeight,
          decoration: BoxDecoration(
            color: colors.background,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(_kSheetEdgeHeight),
            ),
          ),
        ),
      ),
    );
  }
}

class _RoundIconButton extends StatelessWidget {
  const _RoundIconButton({
    required this.icon,
    required this.color,
    required this.onPressed,
    required this.margin,
  });

  final IconData icon;
  final Color color;
  final VoidCallback? onPressed;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    return Center(
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          color: colors.surface,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(icon, color: color),
        ),
      ),
    );
  }
}

/// Затемнение сверху, чтобы статусбар и кнопки читались на светлом фото.
class _TopScrim extends StatelessWidget {
  const _TopScrim();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: .topCenter,
      child: Container(
        height: _kScrimHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: .topCenter,
            end: .bottomCenter,
            colors: <Color>[
              Colors.black.withValues(alpha: 0.35),
              Colors.transparent,
            ],
          ),
        ),
      ),
    );
  }
}

class _PlantImage extends StatelessWidget {
  const _PlantImage({required this.imageUrl});

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    final String? url = imageUrl;
    if (url == null) {
      return const _Placeholder();
    }
    return Image.network(
      url,
      fit: BoxFit.cover,
      errorBuilder:
          (BuildContext context, Object error, StackTrace? stackTrace) =>
              const _Placeholder(),
    );
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder();

  @override
  Widget build(BuildContext context) {
    final ZColorScheme colors = ZColorScheme.of(context);
    return ColoredBox(
      color: colors.secondaryBg,
      child: Icon(Icons.local_florist_outlined, color: colors.brand, size: 64),
    );
  }
}
