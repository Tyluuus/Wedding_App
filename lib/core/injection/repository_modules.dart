import 'package:get_it/get_it.dart';
import 'package:wedding_app/core/http/api_client.dart';
import 'package:wedding_app/domain/information/information_repository.dart';
import 'package:wedding_app/domain/review/review_repository.dart';
import 'package:wedding_app/domain/storage/secure_storage_repository.dart';

Future<void> registerRepository(GetIt getIt) async {
  getIt
    ..registerLazySingleton(() => SecureStorageRepository())
    ..registerLazySingleton(() => ApiClient())
    ..registerLazySingleton(() => InformationRepository(
          getIt(),
        ))
    ..registerLazySingleton(() => ReviewRepository(
          getIt(),
        ));
}
