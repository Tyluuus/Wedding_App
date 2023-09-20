import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:wedding_app/presentation/pages/confirmation/confirmation_cubit.dart';
import 'package:wedding_app/presentation/pages/confirmation/widgets/already_confirmed_widget.dart';
import 'package:wedding_app/presentation/pages/confirmation/widgets/confirmation_form_widget.dart';
import 'package:wedding_app/presentation/styles/dimensions.dart';
import 'package:wedding_app/presentation/widgets/divider_widget.dart';
import 'package:wedding_app/presentation/widgets/spinner_widget.dart';

class ConfirmationLoadedWidget extends HookWidget {
  final ConfirmationCubit cubit;

  const ConfirmationLoadedWidget({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isConfirmedStream = useStream(cubit.isConfirmedStream);
    final isLoading = useState(true);

    if (isConfirmedStream.hasData) {
      isLoading.value = false;
    }

    final nameTextController = useTextEditingController();
    final partnerNameTextController = useTextEditingController();
    final contactNumberTextController = useTextEditingController();
    final additionalInfoTextController = useTextEditingController();
    final withPartner = useState(false);
    final isPartnerUnknown = useState(false);

    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: Center(
            child: Text(
              AppLocalizations.of(context)!.rsvp_page_label,
              style: Theme.of(context).primaryTextTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
        ),
        body: SafeArea(
          child: isLoading.value
              ? const SpinnerWidget()
              : !isConfirmedStream.data!
                  ? Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: kPageSidePaddingValue,
                                ),
                                const Padding(
                                  padding: kDefaultDividerPadding,
                                  child: DividerWidget(),
                                ),
                                Padding(
                                  padding: confirmationSublabelPadding,
                                  child: Text(
                                    AppLocalizations.of(context)!.rsvp_sublabel,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                                const Padding(
                                  padding: kDefaultDividerPadding,
                                  child: DividerWidget(),
                                ),
                                ConfirmationFormWidget(
                                  nameTextController: nameTextController,
                                  partnerNameTextController: partnerNameTextController,
                                  numberTextController: contactNumberTextController,
                                  additionalInfoTextController: additionalInfoTextController,
                                  withPartner: withPartner,
                                  isPartnerUnknown: isPartnerUnknown,
                                ),
                                !isKeyboardVisible
                                    ? Padding(
                                        padding: kDefaultAllSidesEqualPadding,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Theme.of(context).highlightColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(kDefaultSaveButtonBorderRadiusValue),
                                            ),
                                            minimumSize: kDefaultMinimalButtonSize,
                                            elevation: 0,
                                          ),
                                          onPressed: () async {
                                            await cubit.clickSend(
                                              nameTextController.text,
                                              withPartner.value,
                                              partnerNameTextController.text,
                                              additionalInfoTextController.text,
                                              contactNumberTextController.text,
                                            );
                                          },
                                          child: Text(AppLocalizations.of(context)!.send_button_label),
                                        ),
                                      )
                                    : Container(),
                              ],
                            ),
                          ),
                        ),
                        isKeyboardVisible
                            ? Padding(
                                padding: kDefaultAllSidesEqualPadding,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Theme.of(context).highlightColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(kDefaultSaveButtonBorderRadiusValue),
                                    ),
                                    minimumSize: kDefaultMinimalButtonSize,
                                    elevation: 0,
                                  ),
                                  onPressed: () async {
                                    await cubit.clickSend(
                                      nameTextController.text,
                                      withPartner.value,
                                      partnerNameTextController.text,
                                      additionalInfoTextController.text,
                                      contactNumberTextController.text,
                                    );
                                  },
                                  child: Text(
                                    AppLocalizations.of(context)!.send_button_label,
                                  ),
                                ),
                              )
                            : Container(),
                      ],
                    )
                  : const AlreadyConfirmedWidget(),
        ),
      );
    });
  }
}
