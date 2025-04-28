import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zeleno_v2/features/navigation/router.gr.dart';
import 'package:zeleno_v2/resources/resources.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return AutoTabsScaffold(
      routes: const [
        PlantsSearchRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        final colorScheme = ZColorScheme.of(context);
        return Theme(
          data: ThemeData(
            splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
          ),
          child: BottomNavigationBar(
            backgroundColor: colorScheme.onBrand,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(SvgIcons.search),
                activeIcon: SvgPicture.asset(
                  SvgIcons.searchFilled,
                  colorFilter:
                      ColorFilter.mode(colorScheme.action, BlendMode.srcIn),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(SvgIcons.user),
                activeIcon: SvgPicture.asset(
                  SvgIcons.user,
                  colorFilter:
                      ColorFilter.mode(colorScheme.action, BlendMode.srcIn),
                ),
                label: '',
              ),
            ],
          ),
        );
      },
    );
  }
}
