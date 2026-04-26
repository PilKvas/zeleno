// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:zeleno_v2/features/auth/presentation/screens/login/login_screen.dart'
    as _i2;
import 'package:zeleno_v2/features/auth/presentation/screens/password_reset/password_reset_confirm_screen.dart'
    as _i4;
import 'package:zeleno_v2/features/auth/presentation/screens/password_reset/password_reset_request_screen.dart'
    as _i5;
import 'package:zeleno_v2/features/auth/presentation/screens/password_reset/password_reset_verify_screen.dart'
    as _i6;
import 'package:zeleno_v2/features/auth/presentation/screens/registration/registration_screen.dart'
    as _i10;
import 'package:zeleno_v2/features/navigation/bottom_navigation.dart' as _i1;
import 'package:zeleno_v2/features/onboarding/presentation/screens/on_boarding_screen.dart'
    as _i3;
import 'package:zeleno_v2/features/plant_details/presentation/screens/plant_details_screen.dart'
    as _i7;
import 'package:zeleno_v2/features/plant_search/presentation/screens/plants_search_screen.dart'
    as _i8;
import 'package:zeleno_v2/features/profile/presentation/screens/profile_screen.dart'
    as _i9;
import 'package:zeleno_v2/features/rooms/presentation/screens/room_screen.dart'
    as _i11;
import 'package:zeleno_v2/features/splash%20/presentation/splash_screen.dart'
    as _i12;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute({List<_i13.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute({List<_i13.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginScreen();
    },
  );
}

/// generated route for
/// [_i3.OnBoardingScreen]
class OnBoardingRoute extends _i13.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i13.PageRouteInfo>? children})
    : super(OnBoardingRoute.name, initialChildren: children);

  static const String name = 'OnBoardingRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i3.OnBoardingScreen();
    },
  );
}

/// generated route for
/// [_i4.PasswordResetConfirmScreen]
class PasswordResetConfirmRoute
    extends _i13.PageRouteInfo<PasswordResetConfirmRouteArgs> {
  PasswordResetConfirmRoute({
    _i14.Key? key,
    required String token,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         PasswordResetConfirmRoute.name,
         args: PasswordResetConfirmRouteArgs(key: key, token: token),
         initialChildren: children,
       );

  static const String name = 'PasswordResetConfirmRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PasswordResetConfirmRouteArgs>();
      return _i4.PasswordResetConfirmScreen(key: args.key, token: args.token);
    },
  );
}

class PasswordResetConfirmRouteArgs {
  const PasswordResetConfirmRouteArgs({this.key, required this.token});

  final _i14.Key? key;

  final String token;

  @override
  String toString() {
    return 'PasswordResetConfirmRouteArgs{key: $key, token: $token}';
  }
}

/// generated route for
/// [_i5.PasswordResetRequestScreen]
class PasswordResetRequestRoute extends _i13.PageRouteInfo<void> {
  const PasswordResetRequestRoute({List<_i13.PageRouteInfo>? children})
    : super(PasswordResetRequestRoute.name, initialChildren: children);

  static const String name = 'PasswordResetRequestRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i5.PasswordResetRequestScreen();
    },
  );
}

/// generated route for
/// [_i6.PasswordResetVerifyScreen]
class PasswordResetVerifyRoute
    extends _i13.PageRouteInfo<PasswordResetVerifyRouteArgs> {
  PasswordResetVerifyRoute({
    _i14.Key? key,
    required String email,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         PasswordResetVerifyRoute.name,
         args: PasswordResetVerifyRouteArgs(key: key, email: email),
         initialChildren: children,
       );

  static const String name = 'PasswordResetVerifyRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PasswordResetVerifyRouteArgs>();
      return _i6.PasswordResetVerifyScreen(key: args.key, email: args.email);
    },
  );
}

class PasswordResetVerifyRouteArgs {
  const PasswordResetVerifyRouteArgs({this.key, required this.email});

  final _i14.Key? key;

  final String email;

  @override
  String toString() {
    return 'PasswordResetVerifyRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i7.PlantDetailsScreen]
class PlantDetailsRoute extends _i13.PageRouteInfo<PlantDetailsRouteArgs> {
  PlantDetailsRoute({
    _i14.Key? key,
    required String slug,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         PlantDetailsRoute.name,
         args: PlantDetailsRouteArgs(key: key, slug: slug),
         initialChildren: children,
       );

  static const String name = 'PlantDetailsRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PlantDetailsRouteArgs>();
      return _i7.PlantDetailsScreen(key: args.key, slug: args.slug);
    },
  );
}

class PlantDetailsRouteArgs {
  const PlantDetailsRouteArgs({this.key, required this.slug});

  final _i14.Key? key;

  final String slug;

  @override
  String toString() {
    return 'PlantDetailsRouteArgs{key: $key, slug: $slug}';
  }
}

/// generated route for
/// [_i8.PlantSearchStackScreen]
class PlantSearchStackRoute extends _i13.PageRouteInfo<void> {
  const PlantSearchStackRoute({List<_i13.PageRouteInfo>? children})
    : super(PlantSearchStackRoute.name, initialChildren: children);

  static const String name = 'PlantSearchStackRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i8.PlantSearchStackScreen();
    },
  );
}

/// generated route for
/// [_i8.PlantsSearchScreen]
class PlantsSearchRoute extends _i13.PageRouteInfo<void> {
  const PlantsSearchRoute({List<_i13.PageRouteInfo>? children})
    : super(PlantsSearchRoute.name, initialChildren: children);

  static const String name = 'PlantsSearchRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i8.PlantsSearchScreen();
    },
  );
}

/// generated route for
/// [_i9.ProfileScreen]
class ProfileRoute extends _i13.PageRouteInfo<void> {
  const ProfileRoute({List<_i13.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return _i13.WrappedRoute(child: const _i9.ProfileScreen());
    },
  );
}

/// generated route for
/// [_i9.ProfileStackScreen]
class ProfileStackRoute extends _i13.PageRouteInfo<void> {
  const ProfileStackRoute({List<_i13.PageRouteInfo>? children})
    : super(ProfileStackRoute.name, initialChildren: children);

  static const String name = 'ProfileStackRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i9.ProfileStackScreen();
    },
  );
}

/// generated route for
/// [_i10.RegistrationScreen]
class RegistrationRoute extends _i13.PageRouteInfo<void> {
  const RegistrationRoute({List<_i13.PageRouteInfo>? children})
    : super(RegistrationRoute.name, initialChildren: children);

  static const String name = 'RegistrationRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i10.RegistrationScreen();
    },
  );
}

/// generated route for
/// [_i11.RoomScreen]
class RoomRoute extends _i13.PageRouteInfo<void> {
  const RoomRoute({List<_i13.PageRouteInfo>? children})
    : super(RoomRoute.name, initialChildren: children);

  static const String name = 'RoomRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i11.RoomScreen();
    },
  );
}

/// generated route for
/// [_i11.RoomStackScreen]
class RoomStackRoute extends _i13.PageRouteInfo<void> {
  const RoomStackRoute({List<_i13.PageRouteInfo>? children})
    : super(RoomStackRoute.name, initialChildren: children);

  static const String name = 'RoomStackRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i11.RoomStackScreen();
    },
  );
}

/// generated route for
/// [_i12.SplashScreen]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute({List<_i13.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return _i13.WrappedRoute(child: const _i12.SplashScreen());
    },
  );
}
