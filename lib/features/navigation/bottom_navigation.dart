import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zeleno_v2/features/navigation/home_tab.dart';
import 'package:zeleno_v2/features/navigation/widgets/export.dart';
import 'package:zeleno_v2/l10n/export.dart';
import 'package:zeleno_v2/resources/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: <PageRouteInfo>[
        for (final HomeTab tab in HomeTab.values) tab.route,
      ],
      bottomNavigationBuilder: (BuildContext context, TabsRouter tabsRouter) {
        final ZColorScheme colorScheme = ZColorScheme.of(context);
        return Theme(
          data: Theme.of(context).copyWith(
            splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
          ),
          child: BottomNavigationBar(
            backgroundColor: colorScheme.onBrand,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: <BottomNavigationBarItem>[
              for (final HomeTab tab in HomeTab.values)
                _navItem(context, tab, colorScheme),
            ],
          ),
        );
      },
    );
  }

  BottomNavigationBarItem _navItem(
    BuildContext context,
    HomeTab tab,
    ZColorScheme colorScheme,
  ) {
    final (Widget icon, Widget activeIcon, String label) = switch (tab) {
      HomeTab.garden => (
        const GardenTabIcon(active: false),
        const GardenTabIcon(active: true),
        context.l10n.homeTabGarden,
      ),
      HomeTab.search => (
        const SearchTabIcon(active: false),
        const SearchTabIcon(active: true),
        context.l10n.homeTabSearch,
      ),
      HomeTab.profile => (
        _svgIcon(SvgIcons.user, colorScheme.onSurface),
        _svgIcon(SvgIcons.user, colorScheme.action),
        context.l10n.homeTabProfile,
      ),
    };

    return BottomNavigationBarItem(
      icon: icon,
      activeIcon: activeIcon,
      label: label,
    );
  }

  Widget _svgIcon(String asset, Color color) => SvgPicture.asset(
    asset,
    colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
  );
}
