import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zeleno_v2/features/navigation/home_tab.dart';
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
    final (String icon, String activeIcon, String label) = switch (tab) {
      HomeTab.garden => (
        SvgIcons.plant,
        SvgIcons.plant,
        context.l10n.homeTabGarden,
      ),
      HomeTab.search => (
        SvgIcons.search,
        SvgIcons.searchFilled,
        context.l10n.homeTabSearch,
      ),
      HomeTab.profile => (
        SvgIcons.user,
        SvgIcons.user,
        context.l10n.homeTabProfile,
      ),
    };

    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(colorScheme.onSurface, BlendMode.srcIn),
      ),
      activeIcon: SvgPicture.asset(
        activeIcon,
        colorFilter: ColorFilter.mode(colorScheme.action, BlendMode.srcIn),
      ),
      label: label,
    );
  }
}
