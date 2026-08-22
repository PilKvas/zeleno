// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;
import 'package:zeleno_v2/features/auth/presentation/screens/login/login_screen.dart'
    as _i6;
import 'package:zeleno_v2/features/auth/presentation/screens/password_reset/password_reset_confirm_screen.dart'
    as _i8;
import 'package:zeleno_v2/features/auth/presentation/screens/password_reset/password_reset_request_screen.dart'
    as _i9;
import 'package:zeleno_v2/features/auth/presentation/screens/password_reset/password_reset_verify_screen.dart'
    as _i10;
import 'package:zeleno_v2/features/auth/presentation/screens/registration/registration_screen.dart'
    as _i15;
import 'package:zeleno_v2/features/garden_plants/presentation/screens/add/add_garden_plant_screen.dart'
    as _i1;
import 'package:zeleno_v2/features/garden_plants/presentation/screens/add/add_garden_plant_success_screen.dart'
    as _i2;
import 'package:zeleno_v2/features/garden_plants/presentation/screens/detail/garden_plant_detail_screen.dart'
    as _i3;
import 'package:zeleno_v2/features/garden_plants/presentation/screens/list/garden_plants_list_screen.dart'
    as _i4;
import 'package:zeleno_v2/features/navigation/bottom_navigation.dart' as _i5;
import 'package:zeleno_v2/features/onboarding/presentation/screens/on_boarding_screen.dart'
    as _i7;
import 'package:zeleno_v2/features/plant_rooms/presentation/screens/plant_rooms_management_screen.dart'
    as _i11;
import 'package:zeleno_v2/features/plant_rooms/presentation/screens/plant_rooms_selection_screen.dart'
    as _i12;
import 'package:zeleno_v2/features/plant_search/presentation/screens/plants_search_screen.dart'
    as _i13;
import 'package:zeleno_v2/features/profile/presentation/screens/profile_screen.dart'
    as _i14;
import 'package:zeleno_v2/features/splash/presentation/splash_screen.dart'
    as _i16;

/// generated route for
/// [_i1.AddGardenPlantScreen]
class AddGardenPlantRoute extends _i17.PageRouteInfo<AddGardenPlantRouteArgs> {
  AddGardenPlantRoute({
    _i18.Key? key,
    required String defaultPlantName,
    int? plantId,
    int speciesId = 0,
    int roomId = 0,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          AddGardenPlantRoute.name,
          args: AddGardenPlantRouteArgs(
            key: key,
            defaultPlantName: defaultPlantName,
            plantId: plantId,
            speciesId: speciesId,
            roomId: roomId,
          ),
          initialChildren: children,
        );

  static const String name = 'AddGardenPlantRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddGardenPlantRouteArgs>();
      return _i1.AddGardenPlantScreen(
        key: args.key,
        defaultPlantName: args.defaultPlantName,
        plantId: args.plantId,
        speciesId: args.speciesId,
        roomId: args.roomId,
      );
    },
  );
}

class AddGardenPlantRouteArgs {
  const AddGardenPlantRouteArgs({
    this.key,
    required this.defaultPlantName,
    this.plantId,
    this.speciesId = 0,
    this.roomId = 0,
  });

  final _i18.Key? key;

  final String defaultPlantName;

  final int? plantId;

  final int speciesId;

  final int roomId;

  @override
  String toString() {
    return 'AddGardenPlantRouteArgs{key: $key, defaultPlantName: $defaultPlantName, plantId: $plantId, speciesId: $speciesId, roomId: $roomId}';
  }
}

/// generated route for
/// [_i2.AddGardenPlantSuccessScreen]
class AddGardenPlantSuccessRoute
    extends _i17.PageRouteInfo<AddGardenPlantSuccessRouteArgs> {
  AddGardenPlantSuccessRoute({
    _i18.Key? key,
    bool imageUploadFailed = false,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          AddGardenPlantSuccessRoute.name,
          args: AddGardenPlantSuccessRouteArgs(
            key: key,
            imageUploadFailed: imageUploadFailed,
          ),
          initialChildren: children,
        );

  static const String name = 'AddGardenPlantSuccessRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddGardenPlantSuccessRouteArgs>(
        orElse: () => const AddGardenPlantSuccessRouteArgs(),
      );
      return _i2.AddGardenPlantSuccessScreen(
        key: args.key,
        imageUploadFailed: args.imageUploadFailed,
      );
    },
  );
}

class AddGardenPlantSuccessRouteArgs {
  const AddGardenPlantSuccessRouteArgs({
    this.key,
    this.imageUploadFailed = false,
  });

  final _i18.Key? key;

  final bool imageUploadFailed;

  @override
  String toString() {
    return 'AddGardenPlantSuccessRouteArgs{key: $key, imageUploadFailed: $imageUploadFailed}';
  }
}

/// generated route for
/// [_i3.GardenPlantDetailScreen]
class GardenPlantDetailRoute
    extends _i17.PageRouteInfo<GardenPlantDetailRouteArgs> {
  GardenPlantDetailRoute({
    _i18.Key? key,
    int? plantId,
    String? speciesSlug,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          GardenPlantDetailRoute.name,
          args: GardenPlantDetailRouteArgs(
            key: key,
            plantId: plantId,
            speciesSlug: speciesSlug,
          ),
          initialChildren: children,
        );

  static const String name = 'GardenPlantDetailRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GardenPlantDetailRouteArgs>(
        orElse: () => const GardenPlantDetailRouteArgs(),
      );
      return _i3.GardenPlantDetailScreen(
        key: args.key,
        plantId: args.plantId,
        speciesSlug: args.speciesSlug,
      );
    },
  );
}

class GardenPlantDetailRouteArgs {
  const GardenPlantDetailRouteArgs({this.key, this.plantId, this.speciesSlug});

  final _i18.Key? key;

  final int? plantId;

  final String? speciesSlug;

  @override
  String toString() {
    return 'GardenPlantDetailRouteArgs{key: $key, plantId: $plantId, speciesSlug: $speciesSlug}';
  }
}

/// generated route for
/// [_i4.GardenPlantsListScreen]
class GardenPlantsListRoute extends _i17.PageRouteInfo<void> {
  const GardenPlantsListRoute({List<_i17.PageRouteInfo>? children})
      : super(GardenPlantsListRoute.name, initialChildren: children);

  static const String name = 'GardenPlantsListRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i4.GardenPlantsListScreen();
    },
  );
}

/// generated route for
/// [_i4.GardenStackScreen]
class GardenStackRoute extends _i17.PageRouteInfo<void> {
  const GardenStackRoute({List<_i17.PageRouteInfo>? children})
      : super(GardenStackRoute.name, initialChildren: children);

  static const String name = 'GardenStackRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i4.GardenStackScreen();
    },
  );
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i17.PageRouteInfo<void> {
  const HomeRoute({List<_i17.PageRouteInfo>? children})
      : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomeScreen();
    },
  );
}

/// generated route for
/// [_i6.LoginScreen]
class LoginRoute extends _i17.PageRouteInfo<void> {
  const LoginRoute({List<_i17.PageRouteInfo>? children})
      : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i6.LoginScreen();
    },
  );
}

/// generated route for
/// [_i7.OnBoardingScreen]
class OnBoardingRoute extends _i17.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i17.PageRouteInfo>? children})
      : super(OnBoardingRoute.name, initialChildren: children);

  static const String name = 'OnBoardingRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i7.OnBoardingScreen();
    },
  );
}

/// generated route for
/// [_i8.PasswordResetConfirmScreen]
class PasswordResetConfirmRoute
    extends _i17.PageRouteInfo<PasswordResetConfirmRouteArgs> {
  PasswordResetConfirmRoute({
    _i18.Key? key,
    required String token,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          PasswordResetConfirmRoute.name,
          args: PasswordResetConfirmRouteArgs(key: key, token: token),
          initialChildren: children,
        );

  static const String name = 'PasswordResetConfirmRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PasswordResetConfirmRouteArgs>();
      return _i8.PasswordResetConfirmScreen(key: args.key, token: args.token);
    },
  );
}

class PasswordResetConfirmRouteArgs {
  const PasswordResetConfirmRouteArgs({this.key, required this.token});

  final _i18.Key? key;

  final String token;

  @override
  String toString() {
    return 'PasswordResetConfirmRouteArgs{key: $key, token: $token}';
  }
}

/// generated route for
/// [_i9.PasswordResetRequestScreen]
class PasswordResetRequestRoute extends _i17.PageRouteInfo<void> {
  const PasswordResetRequestRoute({List<_i17.PageRouteInfo>? children})
      : super(PasswordResetRequestRoute.name, initialChildren: children);

  static const String name = 'PasswordResetRequestRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i9.PasswordResetRequestScreen();
    },
  );
}

/// generated route for
/// [_i10.PasswordResetVerifyScreen]
class PasswordResetVerifyRoute
    extends _i17.PageRouteInfo<PasswordResetVerifyRouteArgs> {
  PasswordResetVerifyRoute({
    _i18.Key? key,
    required String email,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          PasswordResetVerifyRoute.name,
          args: PasswordResetVerifyRouteArgs(key: key, email: email),
          initialChildren: children,
        );

  static const String name = 'PasswordResetVerifyRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PasswordResetVerifyRouteArgs>();
      return _i10.PasswordResetVerifyScreen(key: args.key, email: args.email);
    },
  );
}

class PasswordResetVerifyRouteArgs {
  const PasswordResetVerifyRouteArgs({this.key, required this.email});

  final _i18.Key? key;

  final String email;

  @override
  String toString() {
    return 'PasswordResetVerifyRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i11.PlantRoomsManagementScreen]
class PlantRoomsManagementRoute extends _i17.PageRouteInfo<void> {
  const PlantRoomsManagementRoute({List<_i17.PageRouteInfo>? children})
      : super(PlantRoomsManagementRoute.name, initialChildren: children);

  static const String name = 'PlantRoomsManagementRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i11.PlantRoomsManagementScreen();
    },
  );
}

/// generated route for
/// [_i12.PlantRoomsSelectionScreen]
class PlantRoomsSelectionRoute
    extends _i17.PageRouteInfo<PlantRoomsSelectionRouteArgs> {
  PlantRoomsSelectionRoute({
    _i18.Key? key,
    required int speciesId,
    required String speciesSlug,
    String defaultPlantName = '',
    List<_i17.PageRouteInfo>? children,
  }) : super(
          PlantRoomsSelectionRoute.name,
          args: PlantRoomsSelectionRouteArgs(
            key: key,
            speciesId: speciesId,
            speciesSlug: speciesSlug,
            defaultPlantName: defaultPlantName,
          ),
          initialChildren: children,
        );

  static const String name = 'PlantRoomsSelectionRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PlantRoomsSelectionRouteArgs>();
      return _i12.PlantRoomsSelectionScreen(
        key: args.key,
        speciesId: args.speciesId,
        speciesSlug: args.speciesSlug,
        defaultPlantName: args.defaultPlantName,
      );
    },
  );
}

class PlantRoomsSelectionRouteArgs {
  const PlantRoomsSelectionRouteArgs({
    this.key,
    required this.speciesId,
    required this.speciesSlug,
    this.defaultPlantName = '',
  });

  final _i18.Key? key;

  final int speciesId;

  final String speciesSlug;

  final String defaultPlantName;

  @override
  String toString() {
    return 'PlantRoomsSelectionRouteArgs{key: $key, speciesId: $speciesId, speciesSlug: $speciesSlug, defaultPlantName: $defaultPlantName}';
  }
}

/// generated route for
/// [_i13.PlantSearchStackScreen]
class PlantSearchStackRoute extends _i17.PageRouteInfo<void> {
  const PlantSearchStackRoute({List<_i17.PageRouteInfo>? children})
      : super(PlantSearchStackRoute.name, initialChildren: children);

  static const String name = 'PlantSearchStackRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i13.PlantSearchStackScreen();
    },
  );
}

/// generated route for
/// [_i13.PlantsSearchScreen]
class PlantsSearchRoute extends _i17.PageRouteInfo<void> {
  const PlantsSearchRoute({List<_i17.PageRouteInfo>? children})
      : super(PlantsSearchRoute.name, initialChildren: children);

  static const String name = 'PlantsSearchRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return _i17.WrappedRoute(child: const _i13.PlantsSearchScreen());
    },
  );
}

/// generated route for
/// [_i14.ProfileScreen]
class ProfileRoute extends _i17.PageRouteInfo<void> {
  const ProfileRoute({List<_i17.PageRouteInfo>? children})
      : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return _i17.WrappedRoute(child: const _i14.ProfileScreen());
    },
  );
}

/// generated route for
/// [_i14.ProfileStackScreen]
class ProfileStackRoute extends _i17.PageRouteInfo<void> {
  const ProfileStackRoute({List<_i17.PageRouteInfo>? children})
      : super(ProfileStackRoute.name, initialChildren: children);

  static const String name = 'ProfileStackRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i14.ProfileStackScreen();
    },
  );
}

/// generated route for
/// [_i15.RegistrationScreen]
class RegistrationRoute extends _i17.PageRouteInfo<void> {
  const RegistrationRoute({List<_i17.PageRouteInfo>? children})
      : super(RegistrationRoute.name, initialChildren: children);

  static const String name = 'RegistrationRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return const _i15.RegistrationScreen();
    },
  );
}

/// generated route for
/// [_i16.SplashScreen]
class SplashRoute extends _i17.PageRouteInfo<void> {
  const SplashRoute({List<_i17.PageRouteInfo>? children})
      : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i17.PageInfo page = _i17.PageInfo(
    name,
    builder: (data) {
      return _i17.WrappedRoute(child: const _i16.SplashScreen());
    },
  );
}
