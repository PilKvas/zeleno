import 'package:auto_route/auto_route.dart';
import 'package:zeleno_v2/features/navigation/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  static RouteType get _noTransition => RouteType.custom(
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            child,
        durationInMilliseconds: 100,
      );

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: OnBoardingRoute.page,
        ),
        AutoRoute(
          page: HomeRoute.page,
          children: [
            AutoRoute(
              page: GardenStackRoute.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: GardenPlantsListRoute.page,
                ),
                AutoRoute(
                  page: PlantRoomsManagementRoute.page,
                ),
                AutoRoute(
                  page: GardenPlantDetailRoute.page,
                ),
                AutoRoute(
                  page: AddGardenPlantRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: PlantSearchStackRoute.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: PlantsSearchRoute.page,
                ),
                AutoRoute(
                  page: PlantDetailsRoute.page,
                ),
                AutoRoute(
                  page: PlantRoomsSelectionRoute.page,
                ),
                AutoRoute(
                  page: AddGardenPlantRoute.page,
                ),
                AutoRoute(
                  page: AddGardenPlantSuccessRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: ProfileStackRoute.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: LoginRoute.page,
                ),
                AutoRoute(
                  page: RegistrationRoute.page,
                ),
                AutoRoute(
                  page: PasswordResetRequestRoute.page,
                ),
                AutoRoute(
                  page: PasswordResetVerifyRoute.page,
                ),
                AutoRoute(
                  page: PasswordResetConfirmRoute.page,
                ),
                AutoRoute(
                  page: ProfileRoute.page,
                  type: _noTransition,
                ),
              ],
            ),
          ],
        ),
      ];

  @override
  List<AutoRouteGuard> get guards => [];
}
