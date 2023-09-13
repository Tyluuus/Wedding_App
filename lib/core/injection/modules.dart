import 'package:get_it/get_it.dart';
import 'package:wedding_app/core/injection/cubit_modules.dart';
import 'package:wedding_app/core/injection/repository_modules.dart';
import 'package:wedding_app/core/injection/services_modules.dart';

Future<void> registerModules(GetIt getIt) async {
  await registerServices(getIt);
  await registerRepository(getIt);
  await registerCubit(getIt);
}
