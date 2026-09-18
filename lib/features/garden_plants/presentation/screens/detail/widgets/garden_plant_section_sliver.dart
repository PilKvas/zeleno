import 'package:flutter/material.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

const double _kHeaderHeight = 52;
const Duration _kToggleDuration = Duration(milliseconds: 250);

/// Раскрывающаяся секция деталки: заголовок — pinned-хедер, залипает под
/// аппбаром, пока скроллится тело секции.
class GardenPlantSectionSliver extends StatefulWidget {
  const GardenPlantSectionSliver({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  State<GardenPlantSectionSliver> createState() =>
      _GardenPlantSectionSliverState();
}

class _GardenPlantSectionSliverState extends State<GardenPlantSectionSliver> {
  bool _isExpanded = true;

  void _toggle() => setState(() => _isExpanded = !_isExpanded);

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
      slivers: <Widget>[
        SliverPersistentHeader(
          pinned: true,
          delegate: _SectionHeaderDelegate(
            title: widget.title,
            isExpanded: _isExpanded,
            onTap: _toggle,
            colors: ZColorScheme.of(context),
            typography: ZTypography.of(context),
          ),
        ),
        SliverToBoxAdapter(
          child: AnimatedSize(
            duration: _kToggleDuration,
            curve: Curves.easeInOut,
            alignment: .topCenter,
            child: Align(
              alignment: .topLeft,
              heightFactor: _isExpanded ? 1 : 0,
              child: AnimatedOpacity(
                duration: _kToggleDuration,
                opacity: _isExpanded ? 1 : 0,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: widget.child,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SectionHeaderDelegate extends SliverPersistentHeaderDelegate {
  const _SectionHeaderDelegate({
    required this.title,
    required this.isExpanded,
    required this.onTap,
    required this.colors,
    required this.typography,
  });

  final String title;
  final bool isExpanded;
  final VoidCallback onTap;
  final ZColorScheme colors;
  final ZTypography typography;

  @override
  double get minExtent => _kHeaderHeight;

  @override
  double get maxExtent => _kHeaderHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox(
      height: _kHeaderHeight,
      child: ColoredBox(
        color: colors.background,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: typography.headline300.copyWith(
                      color: colors.onBackground,
                    ),
                  ),
                ),
                AnimatedRotation(
                  turns: isExpanded ? 0.5 : 0,
                  duration: _kToggleDuration,
                  child: Icon(Icons.expand_more, color: colors.secondaryText),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(_SectionHeaderDelegate oldDelegate) =>
      title != oldDelegate.title ||
      isExpanded != oldDelegate.isExpanded ||
      colors != oldDelegate.colors ||
      typography != oldDelegate.typography;
}
