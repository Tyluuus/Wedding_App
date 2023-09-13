import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/presentation/styles/dimensions.dart';

class TimeoutWidget extends HookWidget {
  TimeoutWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.cloud_off, size: kDefaultButtonHeight),
        Padding(
          padding: kDefaultColumnTopPadding,
          child: Text(
            AppLocalizations.of(context)!.timeout_title,
            style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(fontSize: 32),
          ),
        ),
      ],
    ));
  }
}
