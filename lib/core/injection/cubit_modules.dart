import 'package:get_it/get_it.dart';
import 'package:wedding_app/presentation/app/app_cubit.dart';
import 'package:wedding_app/presentation/pages/base_page_cubit.dart';
import 'package:wedding_app/presentation/pages/confirmation/confirmation_cubit.dart';
import 'package:wedding_app/presentation/pages/contact/contact_cubit.dart';
import 'package:wedding_app/presentation/pages/entry/entry_cubit.dart';
import 'package:wedding_app/presentation/pages/home/home_cubit.dart';
import 'package:wedding_app/presentation/pages/info/info_cubit.dart';
import 'package:wedding_app/presentation/pages/location/location_cubit.dart';

Future<void> registerCubit(GetIt getIt) async {
  getIt
    ..registerFactory(() => BasePageCubit())
    ..registerFactory(() => EntryCubit())
    ..registerFactory(() => HomeCubit())
    ..registerFactory(() => AppCubit())
    ..registerFactory(() => ConfirmationCubit())
    ..registerFactory(() => ContactCubit())
    ..registerFactory(() => InfoCubit())
    ..registerFactory(() => LocationCubit());
}
