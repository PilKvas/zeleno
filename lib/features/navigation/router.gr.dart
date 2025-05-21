// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:zeleno_v2/features/auth/presentation/screens/login/login_screen.dart'
    as _i2;
import 'package:zeleno_v2/features/auth/presentation/screens/registration/registration_screen.dart'
    as _i7;
import 'package:zeleno_v2/features/navigation/bottom_navigation.dart' as _i1;
import 'package:zeleno_v2/features/onboarding/presentation/screens/on_boarding_screen.dart'
    as _i3;
import 'package:zeleno_v2/features/plant_details/presentation/screens/plant_details_screen.dart'
    as _i4;
import 'package:zeleno_v2/features/plant_search/presentation/screens/plants_search_screen.dart'
    as _i5;
import 'package:zeleno_v2/features/profile/presentation/screens/profile_screen.dart'
    as _i6;
import 'package:zeleno_v2/features/rooms/presentation/screens/room_screen.dart'
    as _i8;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginScreen();
    },
  );
}

/// generated route for
/// [_i3.OnBoardingScreen]
class OnBoardingRoute extends _i9.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i9.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.OnBoardingScreen();
    },
  );
}

/// generated route for
/// [_i4.PlantDetailsScreen]
class PlantDetailsRoute extends _i9.PageRouteInfo<PlantDetailsRouteArgs> {
  PlantDetailsRoute({
    _i10.Key? key,
    required String slug,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          PlantDetailsRoute.name,
          args: PlantDetailsRouteArgs(
            key: key,
            slug: slug,
          ),
          initialChildren: children,
        );

  static const String name = 'PlantDetailsRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PlantDetailsRouteArgs>();
      return _i4.PlantDetailsScreen(
        key: args.key,
        slug: args.slug,
      );
    },
  );
}

class PlantDetailsRouteArgs {
  const PlantDetailsRouteArgs({
    this.key,
    required this.slug,
  });

  final _i10.Key? key;

  final String slug;

  @override
  String toString() {
    return 'PlantDetailsRouteArgs{key: $key, slug: $slug}';
  }
}

/// generated route for
/// [_i5.PlantSearchStackScreen]
class PlantSearchStackRoute extends _i9.PageRouteInfo<void> {
  const PlantSearchStackRoute({List<_i9.PageRouteInfo>? children})
      : super(
          PlantSearchStackRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlantSearchStackRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.PlantSearchStackScreen();
    },
  );
}

/// generated route for
/// [_i5.PlantsSearchScreen]
class PlantsSearchRoute extends _i9.PageRouteInfo<void> {
  const PlantsSearchRoute({List<_i9.PageRouteInfo>? children})
      : super(
          PlantsSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlantsSearchRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.PlantsSearchScreen();
    },
  );
}

/// generated route for
/// [_i6.ProfileScreen]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i6.ProfileStackScreen]
class ProfileStackRoute extends _i9.PageRouteInfo<void> {
  const ProfileStackRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileStackRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileStackRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.ProfileStackScreen();
    },
  );
}

/// generated route for
/// [_i7.RegistrationScreen]
class RegistrationRoute extends _i9.PageRouteInfo<void> {
  const RegistrationRoute({List<_i9.PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i7.RegistrationScreen();
    },
  );
}

/// generated route for
/// [_i8.RoomScreen]
class RoomRoute extends _i9.PageRouteInfo<void> {
  const RoomRoute({List<_i9.PageRouteInfo>? children})
      : super(
          RoomRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoomRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.RoomScreen();
    },
  );
}

/// generated route for
/// [_i8.RoomStackScreen]
class RoomStackRoute extends _i9.PageRouteInfo<void> {
  const RoomStackRoute({List<_i9.PageRouteInfo>? children})
      : super(
          RoomStackRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoomStackRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.RoomStackScreen();
    },
  );
}
