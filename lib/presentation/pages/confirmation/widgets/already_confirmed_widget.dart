import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/presentation/styles/dimensions.dart';

class AlreadyConfirmedWidget extends HookWidget {
  const AlreadyConfirmedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPageSidePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.check,
            size: kDefaultBottomMarginValue,
            color: Theme.of(context).highlightColor,
          ),
          Padding(
            padding: kDefaultVerticalPadding,
            child: Text(
              AppLocalizations.of(context)!.confirmation_done_title,
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.bodyLarge,
            ),
          ),
          Text(
            AppLocalizations.of(context)!.confirmation_done_text,
            textAlign: TextAlign.center,
            style: Theme.of(context).primaryTextTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
