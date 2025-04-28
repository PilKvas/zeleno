// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:zeleno_v2/features/navigation/bottom_navigation.dart' as _i1;
import 'package:zeleno_v2/features/plant_search/presentation/screens/plants_search_screen.dart'
    as _i2;
import 'package:zeleno_v2/features/profile/presentation/screens/profile_screen.dart'
    as _i3;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.PlantSearchStackScreen]
class PlantSearchStackRoute extends _i4.PageRouteInfo<void> {
  const PlantSearchStackRoute({List<_i4.PageRouteInfo>? children})
      : super(
          PlantSearchStackRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlantSearchStackRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.PlantSearchStackScreen();
    },
  );
}

/// generated route for
/// [_i2.PlantsSearchScreen]
class PlantsSearchRoute extends _i4.PageRouteInfo<void> {
  const PlantsSearchRoute({List<_i4.PageRouteInfo>? children})
      : super(
          PlantsSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlantsSearchRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.PlantsSearchScreen();
    },
  );
}

/// generated route for
/// [_i3.ProfileScreen]
class ProfileRoute extends _i4.PageRouteInfo<void> {
  const ProfileRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i3.ProfileStackScreen]
class ProfileStackRoute extends _i4.PageRouteInfo<void> {
  const ProfileStackRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ProfileStackRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileStackRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.ProfileStackScreen();
    },
  );
}
