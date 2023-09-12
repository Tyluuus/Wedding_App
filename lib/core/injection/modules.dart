import 'package:get_it/get_it.dart';
import 'package:wedding_app/core/injection/cubit_modules.dart';


Future<void> registerModules(GetIt getIt) async {
  await registerCubit(getIt);
}
