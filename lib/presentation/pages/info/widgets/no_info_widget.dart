import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/presentation/styles/dimensions.dart';

class NoInfoWidget extends HookWidget {
  const NoInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPageSidePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.info_outline,
            size: kDefaultBottomMarginValue,
            color: Theme.of(context).highlightColor,
          ),
          Padding(
            padding: kDefaultVerticalPadding,
            child: Text(
              AppLocalizations.of(context)!.information_page_info,
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
