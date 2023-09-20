import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/presentation/styles/dimensions.dart';

class InfoDialogWidget extends HookWidget {
  final String title;
  final String info;
  final String ok;

  const InfoDialogWidget({
    required this.info,
    required this.title,
    required this.ok,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(kDefaultDialogRadiusValue),
        ),
      ),
      insetPadding: kPageSidePadding,
      title: Text(title),
      // To display the title it is optional
      content: Text(
        info,
      ),

      actions: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kDefaultSaveButtonBorderRadiusValue),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          }, // function used to perform after pressing the button
          child: Text(
            ok,
            style: Theme.of(context).primaryTextTheme.bodyMedium,
          ),
        ),
      ],
      actionsPadding: kDefaultSmallAllSidesEqualPadding,
    );
  }
}
