import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeleno_v2/core/config/url.dart';
import 'package:zeleno_v2/data/network/connectivity_checker.dart';
import 'package:zeleno_v2/data/network/interceptor.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/first_run/first_run_storage.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/first_run/i_first_run_storage.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/theme_storage/i_theme_mode_storage.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/theme_storage/theme_mode_storage.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/tokens_storage/i_tokens_storage.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/tokens_storage/tokens_storage.dart';
import 'package:zeleno_v2/features/auth/data/repository/auth_repository.dart';
import 'package:zeleno_v2/features/auth/data/repository/refresh_repository.dart';
import 'package:zeleno_v2/features/auth/data/service/auth_service.dart';
import 'package:zeleno_v2/features/auth/data/service/refresh_service.dart';
import 'package:zeleno_v2/features/auth/domain/repository/i_auth_repository.dart';
import 'package:zeleno_v2/features/auth/domain/repository/i_refresh_repository.dart';
import 'package:zeleno_v2/features/plant_details/data/repository/plant_details_repository.dart';
import 'package:zeleno_v2/features/plant_details/data/service/plant_details_service.dart';
import 'package:zeleno_v2/features/plant_details/domain/reposiotory/i_plant_details_repository.dart';
import 'package:zeleno_v2/features/plant_filters/data/repository/plant_filters_repository.dart';
import 'package:zeleno_v2/features/plant_filters/data/service/plant_filters_service.dart';
import 'package:zeleno_v2/features/plant_filters/domain/repository/i_plant_filters_repository.dart';
import 'package:zeleno_v2/features/plant_filters/domain/usecases/plant_filters_usecase.dart';
import 'package:zeleno_v2/features/garden_plants/data/repository/garden_plants_repository.dart';
import 'package:zeleno_v2/features/garden_plants/data/service/garden_plants_service.dart';
import 'package:zeleno_v2/features/garden_plants/domain/repository/i_garden_plants_repository.dart';
import 'package:zeleno_v2/features/garden_plants/presentation/screens/list/cubit/garden_plants_list_cubit.dart';
import 'package:zeleno_v2/features/plant_rooms/presentation/cubit/plant_rooms_cubit.dart';
import 'package:zeleno_v2/features/plant_rooms/data/repository/plant_rooms_repository.dart';
import 'package:zeleno_v2/features/plant_rooms/data/service/plant_rooms_service.dart';
import 'package:zeleno_v2/features/plant_rooms/domain/repository/i_plant_rooms_repository.dart';
import 'package:zeleno_v2/features/plant_search/data/repository/plant_search_repository.dart';
import 'package:zeleno_v2/features/plant_search/data/service/plant_search_service.dart';
import 'package:zeleno_v2/features/plant_search/domain/repository/i_plant_search_repository.dart';
import 'package:zeleno_v2/features/plant_search/domain/usecases/plants_search_usecase.dart';
import 'package:zeleno_v2/features/profile/data/repository/profile_repository.dart';
import 'package:zeleno_v2/features/profile/data/service/profile_service.dart';
import 'package:zeleno_v2/features/profile/domain/repository/i_profile_repository.dart';

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
