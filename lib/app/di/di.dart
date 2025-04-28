import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeleno_v2/core/config/url.dart';
import 'package:zeleno_v2/features/plant_search/data/repository/plant_search_repository.dart';
import 'package:zeleno_v2/features/plant_search/data/service/plant_search_service.dart';
import 'package:zeleno_v2/features/plant_search/domain/repository/i_plant_search_repository.dart';
import 'package:zeleno_v2/features/plant_search/domain/usecases/plants_search_usecase.dart';

GetIt injection = GetIt.I;

Future<void> initializeDependencies() async {
  final dio = Dio(
    BaseOptions(baseUrl: Url.dev.value),
  );

  final sharedPreferences = await SharedPreferences.getInstance();

  const storage = FlutterSecureStorage();

  injection
    ..registerLazySingleton<PlantSearchService>(
      () => PlantSearchService(dio),
    )
    ..registerLazySingleton<IPlantSearchRepository>(
      () => PlantSearchRepository(plantSearchService: injection()),
    )
    ..registerLazySingleton<PlantsSearchUsecase>(
      () => PlantsSearchUsecase(iPlantRepository: injection()),
    );

  // dio.interceptors.add(
  //   MiddlewareInterceptor(),
  // );
}
