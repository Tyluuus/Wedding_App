import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/presentation/styles/dimensions.dart';

class DoubleChoiceDialogWidget extends HookWidget {
  final String title;
  final String info;
  final String cancel;
  final String firstOption;
  final String secondOption;
  final String? additionalInfo;

  const DoubleChoiceDialogWidget({
    required this.info,
    required this.title,
    required this.cancel,
    required this.firstOption,
    required this.secondOption,
    this.additionalInfo,
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
      title: Text(
        title,
      ),
      // To display the title it is optional
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            info,
          ),
          additionalInfo != null
              ? Text(
                  additionalInfo!,
                )
              : Container(),
        ],
      ),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kDefaultSaveButtonBorderRadiusValue), // <-- Radius
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          onPressed: () {
            Navigator.of(context).pop(DialogAction.cancel);
          }, // function used to perform after pressing the button
          child: Text(
            cancel,
            style: Theme.of(context).primaryTextTheme.labelMedium,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).highlightColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kDefaultSaveButtonBorderRadiusValue), // <-- Radius
            ),
            elevation: 0,
            shadowColor: Colors.transparent,
          ),
          onPressed: () => {
            Navigator.of(context).pop(DialogAction.firstOption),
          }, // function used to perform after pressing the button
          child: Text(
            firstOption,
            style: Theme.of(context).primaryTextTheme.labelMedium,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).highlightColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kDefaultSaveButtonBorderRadiusValue), // <-- Radius
            ),
            elevation: 0,
            shadowColor: Colors.transparent,
          ),
          onPressed: () => {
            Navigator.of(context).pop(DialogAction.secondOption),
          }, // function used to perform after pressing the button
          child: Text(
            secondOption,
            style: Theme.of(context).primaryTextTheme.labelMedium,
          ),
        ),
      ],
      actionsPadding: kDefaultSmallAllSidesEqualPadding,
    );
  }
}

enum DialogAction {
  cancel,
  firstOption,
  secondOption,
}
