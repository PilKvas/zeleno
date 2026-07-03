import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zeleno_v2/features/auth/domain/model/export.dart';
import 'package:zeleno_v2/features/auth/presentation/cubit/export.dart';
import 'package:zeleno_v2/features/navigation/router.gr.dart';
import 'package:zeleno_v2/resources/export.dart';
import 'package:zeleno_v2/uikit/theme/export.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TabsRouter? _tabsRouter;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listenWhen: (previous, current) =>
          previous.authStatus != current.authStatus,
      listener: (context, state) {
        // Набор вкладок меняется вместе со статусом авторизации. Сбрасываем
        // активную вкладку на первую, иначе индекс «уезжает» и контент
        // (IndexedStack) рассинхронизируется с индикатором bottomNavigation.
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _tabsRouter?.setActiveIndex(0);
        });
      },
      buildWhen: (previous, current) =>
          previous.authStatus != current.authStatus,
      builder: (context, authState) {
        // Таб «Мой сад» доступен только авторизованным пользователям.
        final bool isAuthenticated =
            authState.authStatus == AuthStatus.authenticated;

        final List<PageRouteInfo> routes = <PageRouteInfo>[
          if (isAuthenticated) const GardenStackRoute(),
          const PlantSearchStackRoute(),
          const ProfileStackRoute(),
        ];

        return AutoTabsScaffold(
          routes: routes,
          bottomNavigationBuilder: (context, tabsRouter) {
            _tabsRouter = tabsRouter;
            final colorScheme = ZColorScheme.of(context);
            final items = <BottomNavigationBarItem>[
              if (isAuthenticated)
                _navItem(SvgIcons.plant, SvgIcons.plant, colorScheme),
              _navItem(SvgIcons.search, SvgIcons.searchFilled, colorScheme),
              _navItem(SvgIcons.user, SvgIcons.user, colorScheme),
            ];
            return Theme(
              data: ThemeData(
                splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
              ),
              child: BottomNavigationBar(
                backgroundColor: colorScheme.onBrand,
                currentIndex:
                    tabsRouter.activeIndex.clamp(0, items.length - 1),
                onTap: tabsRouter.setActiveIndex,
                items: items,
              ),
            );
          },
        );
      },
    );
  }

  BottomNavigationBarItem _navItem(
    String icon,
    String activeIcon,
    ZColorScheme colorScheme,
  ) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(colorScheme.onSurface, BlendMode.srcIn),
      ),
      activeIcon: SvgPicture.asset(
        activeIcon,
        colorFilter: ColorFilter.mode(colorScheme.action, BlendMode.srcIn),
      ),
      label: '',
    );
  }
}
