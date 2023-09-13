import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedding_app/presentation/pages/entry/entry_cubit.dart';
import 'package:wedding_app/presentation/styles/dimensions.dart';
import 'package:wedding_app/presentation/widgets/logo_widget.dart';

class EntryLoadedWidget extends HookWidget {
  final EntryCubit cubit;

  const EntryLoadedWidget({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Stack(
            children: [
              const Image(
                image: AssetImage('assets/img/placeholder_1.jpeg'),
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
              ),
              Container(
                color: Theme.of(context).focusColor.withOpacity(0.45),
              ),
            ],
          ),
          // Top text
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                AppLocalizations.of(context)!.app_name,
                style: Theme.of(context).primaryTextTheme.bodySmall!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
          // Left text
          Padding(
            padding: kDefaultRowLeftPadding,
            child: Align(
              alignment: Alignment.centerLeft,
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  AppLocalizations.of(context)!.bride_name,
                  style: Theme.of(context).primaryTextTheme.titleSmall!.copyWith(
                        color: Colors.black45,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ),
          ),
          // Right text
          Padding(
            padding: kDefaultRowRightPadding,
            child: Align(
              alignment: Alignment.centerRight,
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  AppLocalizations.of(context)!.groom_name,
                  style: Theme.of(context).primaryTextTheme.titleSmall!.copyWith(
                        color: Colors.black45,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ),
          ),
          // Logo
          const Align(
            alignment: Alignment.center,
            child: LogoWidget(),
          ),
          // Bottom text
          Padding(
            padding: const EdgeInsets.only(
              bottom: 2 * kDefaultBottomMarginValue,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    AppLocalizations.of(context)!.entry_date_and_time,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.signika(
                      height: 1.5,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).focusColor.withOpacity(0.8),
                    ),
                  ),
                  Padding(
                    padding: kDefaultColumnTopPadding,
                    child: CircularProgressIndicator(
                      color: Theme.of(context).highlightColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Proceed button
        ],
      ),
    );
  }
}
