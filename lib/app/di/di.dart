import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeleno_v2/core/config/url.dart';
import 'package:zeleno_v2/data/network/interceptor.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/first_run/first_run_storage.dart';
import 'package:zeleno_v2/features/auth/data/persistence/storage/first_run/i_first_run_storage.dart';
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
import 'package:zeleno_v2/features/plant_search/data/repository/plant_search_repository.dart';
import 'package:zeleno_v2/features/plant_search/data/service/plant_search_service.dart';
import 'package:zeleno_v2/features/plant_search/domain/repository/i_plant_search_repository.dart';
import 'package:zeleno_v2/features/plant_search/domain/usecases/plants_search_usecase.dart';
import 'package:zeleno_v2/features/rooms/data/repository/garden_plants_repository.dart';
import 'package:zeleno_v2/features/rooms/data/repository/room_repository.dart';
import 'package:zeleno_v2/features/rooms/data/service/garden_service.dart';
import 'package:zeleno_v2/features/rooms/data/service/room_service.dart';
import 'package:zeleno_v2/features/rooms/domain/repository/i_garden_repository.dart';
import 'package:zeleno_v2/features/rooms/domain/repository/i_room_repository.dart';

import '../../features/auth/data/persistence/storage/tokens_storage/i_tokens_storage.dart';

final injection = GetIt.instance;

Future<void> initializeDependencies() async {
  final dio = Dio(
    BaseOptions(baseUrl: Url.dev.value),
  );

  final sharedPreferences = await SharedPreferences.getInstance();

  const secureStorage = FlutterSecureStorage();

  injection
    ..registerLazySingleton<ITokensStorage>(
      () => TokensStorage(secureStorage),
    )
    ..registerLazySingleton<IFirstRunStorage>(
      () => FirstRunStorage(sharedPreferences),
    );

  injection
    ..registerLazySingleton<AuthService>(
      () => AuthService(dio),
    )
    ..registerLazySingleton<RefreshService>(
      () => RefreshService(dio),
    )
    ..registerLazySingleton<PlantSearchService>(
      () => PlantSearchService(dio),
    )
    ..registerLazySingleton<PlantDetailsService>(
      () => PlantDetailsService(dio),
    )
    ..registerLazySingleton<RoomService>(
      () => RoomService(dio),
    )
    ..registerLazySingleton<GardenService>(
      () => GardenService(dio),
    );

  injection
    ..registerLazySingleton<IRefreshRepository>(
      () => RefreshRepository(refreshService: injection()),
    )
    ..registerLazySingleton<IPlantSearchRepository>(
      () => PlantSearchRepository(plantSearchService: injection()),
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
    ..registerLazySingleton<IRoomRepository>(
      () => RoomRepository(
        roomService: injection(),
      ),
    )
    ..registerLazySingleton<IGardenPlantRepository>(
      () => GardenPlantsRepository(
        gardenService: injection(),
      ),
    );

  injection.registerLazySingleton<PlantsSearchUsecase>(
    () => PlantsSearchUsecase(iPlantRepository: injection()),
  );

  dio.interceptors.add(
    MiddlewareInterceptor(
      tokensStorage: injection<ITokensStorage>(),
      refreshRepository: injection<IRefreshRepository>(),
    ),
  );
}
