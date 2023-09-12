import 'package:auto_route/auto_route.dart';
import 'package:wedding_app/presentation/pages/confirmation/confirmation_page.dart';
import 'package:wedding_app/presentation/pages/contact/contact_page.dart';
import 'package:wedding_app/presentation/pages/entry/entry_page.dart';
import 'package:wedding_app/presentation/pages/home/home_page.dart';
import 'package:wedding_app/presentation/pages/info/info_page.dart';
import 'package:wedding_app/presentation/pages/location/location_page.dart';

part 'main_router.gr.dart';

@AutoRouterConfig()
class MainRouter extends _$MainRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: EntryRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: ContactRoute.page),
        AutoRoute(page: ConfirmationRoute.page),
        AutoRoute(page: InfoRoute.page),
        AutoRoute(page: LocationRoute.page),
      ];
}
