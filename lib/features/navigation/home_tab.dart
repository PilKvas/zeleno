import 'package:auto_route/auto_route.dart';
import 'package:zeleno_v2/features/navigation/router.gr.dart';

/// Табы нижней навигации. Набор статичен для любого статуса авторизации:
/// доступ гостя к «Моему саду» ограничивается внутри самого garden-стека.
enum HomeTab {
  garden,
  search,
  profile;

  PageRouteInfo get route => switch (this) {
        HomeTab.garden => const GardenStackRoute(),
        HomeTab.search => const PlantSearchStackRoute(),
        HomeTab.profile => const ProfileStackRoute(),
      };
}

extension HomeTabsRouterX on TabsRouter {
  void setActiveTab(HomeTab tab) => setActiveIndex(tab.index);
}
