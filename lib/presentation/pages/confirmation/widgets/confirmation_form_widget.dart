import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/presentation/styles/dimensions.dart';
import 'package:wedding_app/presentation/widgets/base_text_field.dart';

class ConfirmationFormWidget extends HookWidget {
  final TextEditingController nameTextController;

  final TextEditingController partnerNameTextController;
  final TextEditingController numberTextController;
  final TextEditingController additionalInfoTextController;

  final ValueNotifier<bool> withPartner;
  final ValueNotifier<bool> isPartnerUnknown;

  const ConfirmationFormWidget({
    Key? key,
    required this.nameTextController,
    required this.partnerNameTextController,
    required this.numberTextController,
    required this.additionalInfoTextController,
    required this.withPartner,
    required this.isPartnerUnknown,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final withPartner = useState(false);
    // final isPartnerUnknown = useState(false);
    // // final nameTextController = useTextEditingController();
    // final partnerNameTextController = useTextEditingController();
    // final contactNumberTextController = useTextEditingController();
    // final additionalInfoTextController = useTextEditingController();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: kDefaultAllSidesNotEqualPadding,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppLocalizations.of(context)!.contact_data_label,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          Padding(
            padding: kDefaultLTRPadding,
            child: BaseTextField(
              textEditingController: nameTextController,
              label: AppLocalizations.of(context)!.name_text_field_label,
            ),
          ),
          Padding(
            padding: kDefaultCheckboxQuestionPadding,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppLocalizations.of(context)!.accompanying_person_text,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                const Spacer(),
                Checkbox(
                  value: withPartner.value,
                  activeColor: Theme.of(context).highlightColor,
                  onChanged: (state) {
                    withPartner.value = (state == null || !state) ? false : true;
                  },
                ),
              ],
            ),
          ),
          withPartner.value && !isPartnerUnknown.value
              ? Padding(
                  padding: kDefaultTextFieldPadding,
                  child: BaseTextField(
                    textEditingController: partnerNameTextController,
                    label: AppLocalizations.of(context)!.accompanying_person_text_field_title,
                  ),
                )
              : Container(),
          withPartner.value
              ? Padding(
                  padding: kDefaultCheckboxQuestionPadding,
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          AppLocalizations.of(context)!.i_dont_know_label,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                        value: isPartnerUnknown.value,
                        activeColor: Theme.of(context).highlightColor,
                        onChanged: (state) {
                          isPartnerUnknown.value = (state == null || !state) ? false : true;
                        },
                      ),
                    ],
                  ),
                )
              : Container(),
          Padding(
            padding: kDefaultAllSidesNotEqualPadding,
            child: Text(
              AppLocalizations.of(context)!.contact_number_label_exp,
              style: Theme.of(context).primaryTextTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: kDefaultTextFieldPadding,
            child: BaseTextField(
              textEditingController: numberTextController,
              label: AppLocalizations.of(context)!.contact_number_label,
              phone: true,
            ),
          ),
          Padding(
            padding: kDefaultAllSidesNotEqualPadding,
            child: Text(
              AppLocalizations.of(context)!.confirmation_additional_info_exp,
              style: Theme.of(context).primaryTextTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: kDefaultTextFieldPadding,
            child: BaseTextField(
              textEditingController: additionalInfoTextController,
              label: AppLocalizations.of(context)!.confirmation_additional_info,
            ),
          ),
        ],
      ),
    );
  }
}
