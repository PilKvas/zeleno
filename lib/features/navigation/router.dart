import 'package:auto_route/auto_route.dart';
import 'package:zeleno_v2/features/navigation/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.cupertino(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        AutoRoute(initial: true, page: HomeRoute.page, children: [
          AutoRoute(
            page: PlantSearchStackRoute.page,
            children: [
              AutoRoute(
                initial: true,
                page: PlantsSearchRoute.page,
              )
            ],
          ),
          AutoRoute(
            page: ProfileStackRoute.page,
            children: [
              AutoRoute(
                initial: true,
                page: ProfileRoute.page,
              )
            ],
          ),
        ]),
      ];

  @override
  List<AutoRouteGuard> get guards => [
        // optionally add root guards here
      ];
}
