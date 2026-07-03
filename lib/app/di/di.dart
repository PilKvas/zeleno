import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeleno_v2/core/config/export.dart';
import 'package:zeleno_v2/data/network/export.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/first_run/export.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/theme_storage/export.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/tokens_storage/export.dart';
import 'package:zeleno_v2/features/auth/data/repository/export.dart';
import 'package:zeleno_v2/features/auth/data/service/export.dart';
import 'package:zeleno_v2/features/auth/domain/repository/export.dart';
import 'package:zeleno_v2/features/garden_plants/data/repository/export.dart';
import 'package:zeleno_v2/features/garden_plants/data/service/export.dart';
import 'package:zeleno_v2/features/garden_plants/domain/repository/export.dart';
import 'package:zeleno_v2/features/garden_plants/presentation/screens/list/cubit/export.dart';
import 'package:zeleno_v2/features/plant_details/data/repository/export.dart';
import 'package:zeleno_v2/features/plant_details/data/service/export.dart';
import 'package:zeleno_v2/features/plant_details/domain/reposiotory/export.dart';
import 'package:zeleno_v2/features/plant_filters/data/repository/export.dart';
import 'package:zeleno_v2/features/plant_filters/data/service/export.dart';
import 'package:zeleno_v2/features/plant_filters/domain/repository/export.dart';
import 'package:zeleno_v2/features/plant_filters/domain/usecases/export.dart';
import 'package:zeleno_v2/features/plant_rooms/data/repository/export.dart';
import 'package:zeleno_v2/features/plant_rooms/data/service/export.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/repository/export.dart';
import 'package:zeleno_v2/features/plant_rooms/presentation/cubit/export.dart';
import 'package:zeleno_v2/features/plant_search/data/repository/export.dart';
import 'package:zeleno_v2/features/plant_search/data/service/export.dart';
import 'package:zeleno_v2/features/plant_search/domain/repository/export.dart';
import 'package:zeleno_v2/features/plant_search/domain/usecases/export.dart';
import 'package:zeleno_v2/features/profile/data/repository/export.dart';
import 'package:zeleno_v2/features/profile/data/service/export.dart';
import 'package:zeleno_v2/features/profile/domain/repository/export.dart';

final injection = GetIt.instance;

Future<void> initializeDependencies() async {
  final dio = Dio(BaseOptions(baseUrl: Url.dev.value));
  // Separate instance without interceptors — used only for token refresh
  // to avoid deadlock when the refresh endpoint itself returns 401.
  final bareDio = Dio(BaseOptions(baseUrl: Url.dev.value));

  final sharedPreferences = await SharedPreferences.getInstance();

  const secureStorage = FlutterSecureStorage();

  injection
    ..registerLazySingleton<IConnectivityChecker>(
      ConnectivityChecker.new,
    )
    ..registerLazySingleton<ITokensStorage>(
      () => TokensStorage(secureStorage),
    )
    ..registerLazySingleton<IFirstRunStorage>(
      () => FirstRunStorage(sharedPreferences),
    )
    ..registerLazySingleton<IThemeModeStorage>(
      () => ThemeModeStorage(sharedPreferences),
    );

  injection
    ..registerLazySingleton<AuthService>(
      () => AuthService(dio),
    )
    ..registerLazySingleton<RefreshService>(
      () => RefreshService(bareDio),
    )
    ..registerLazySingleton<PlantSearchService>(
      () => PlantSearchService(dio),
    )
    ..registerLazySingleton<PlantFiltersService>(
      () => PlantFiltersService(dio),
    )
    ..registerLazySingleton<PlantDetailsService>(
      () => PlantDetailsService(dio),
    )
    ..registerLazySingleton<PlantRoomsService>(
      () => PlantRoomsService(dio),
    )
    ..registerLazySingleton<GardenPlantsService>(
      () => GardenPlantsService(dio),
    )
    ..registerLazySingleton<ProfileService>(
      () => ProfileService(dio),
    );

  injection
    ..registerLazySingleton<IRefreshRepository>(
      () => RefreshRepository(refreshService: injection()),
    )
    ..registerLazySingleton<IPlantSearchRepository>(
      () => PlantSearchRepository(plantSearchService: injection()),
    )
    ..registerLazySingleton<IPlantFiltersRepository>(
      () => PlantFiltersRepository(plantFiltersService: injection()),
    )
    ..registerLazySingleton<IAuthRepository>(
      () => AuthRepository(
        tokenStorage: injection(),
        authService: injection(),
      ),
    )
    ..registerLazySingleton<IPlantDetailsRepository>(
      () => PlantDetailsRepository(
        plantDetailsService: injection(),
      ),
    )
    ..registerLazySingleton<IPlantRoomsRepository>(
      () => PlantRoomsRepository(
        plantRoomsService: injection(),
      ),
    )
    ..registerLazySingleton<IGardenPlantsRepository>(
      () => GardenPlantsRepository(
        gardenPlantsService: injection(),
      ),
    )
    ..registerLazySingleton<IProfileRepository>(() => ProfileRepository(
          profileService: injection(),
        ));

  injection.registerLazySingleton<PlantsSearchUsecase>(
    () => PlantsSearchUsecase(iPlantRepository: injection()),
  );

  injection.registerLazySingleton<PlantFiltersUsecase>(
    () => PlantFiltersUsecase(plantFiltersRepository: injection()),
  );

  injection.registerLazySingleton<GardenPlantsListCubit>(
    () => GardenPlantsListCubit(gardenPlantsRepository: injection()),
  );

  injection.registerLazySingleton<PlantRoomsCubit>(
    () => PlantRoomsCubit(plantRoomsRepository: injection()),
  );

  dio.interceptors.add(
    MiddlewareInterceptor(
      dio: dio,
      tokensStorage: injection<ITokensStorage>(),
      refreshRepository: injection<IRefreshRepository>(),
      authRepository: injection<IAuthRepository>(),
      connectivityChecker: injection<IConnectivityChecker>(),
    ),
  );
}
