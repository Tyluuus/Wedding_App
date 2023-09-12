import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:wedding_app/core/hooks/cubit_hook.dart';
import 'package:wedding_app/core/localization/l10n.dart';
import 'package:wedding_app/presentation/app/app_cubit.dart';
import 'package:wedding_app/presentation/routing/main_router.dart';
import 'package:wedding_app/presentation/styles/app_theme.dart';

final _appRouter = MainRouter();

class App extends HookWidget {
  const App({Key? key, this.defaultLanguage}) : super(key: key);
  final Locale? defaultLanguage;

  @override
  Widget build(BuildContext context) {
    final cubit = useCubit<AppCubit>();

    useCubitListener<AppCubit, AppState>(cubit, listener: _cubitStateListener, listenWhen: _listenWhen);

    useEffect(() {
      cubit.init();

      return () {};
    }, [cubit]);

    final appTheme = AppTheme.initialize();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      supportedLocales: L10n.all,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AppLocalizations.delegate
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        if (defaultLanguage != null) {
          Intl.defaultLocale = defaultLanguage!.toLanguageTag();
          return defaultLanguage;
        }
        if (locale == null) {
          Intl.defaultLocale == supportedLocales.first.toLanguageTag();
          return supportedLocales.first;
        }
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode) {
            Intl.defaultLocale = supportedLocale.toLanguageTag();
            return supportedLocale;
          }
        }
        Intl.defaultLocale = supportedLocales.first.toLanguageTag();
        return supportedLocales.first;
      },
      theme: appTheme.main,
      // theme: appTheme.main,
    );
  }

  bool _listenWhen(AppState state) => state is! AppStateIdle;

  void _cubitStateListener(
    AppCubit cubit,
    AppState state,
    BuildContext context,
  ) {
    state.maybeWhen(
      orElse: () {},
    );
  }
}
