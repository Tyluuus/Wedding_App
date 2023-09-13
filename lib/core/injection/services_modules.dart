import 'package:get_it/get_it.dart';
import 'package:wedding_app/domain/error/error_service.dart';
import 'package:wedding_app/domain/information/information_service.dart';
import 'package:wedding_app/domain/review/review_service.dart';

Future<void> registerServices(GetIt getIt) async {
  getIt
    ..registerLazySingleton(() => ErrorsService())
    ..registerLazySingleton(() => InformationService(
          getIt(),
          getIt(),
        ))
    ..registerLazySingleton(() => ReviewService(
          getIt(),
          getIt(),
        ));
}
