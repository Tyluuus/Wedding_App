import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/core/hooks/cubit_hook.dart';
import 'package:wedding_app/presentation/pages/base_page.dart';
import 'package:wedding_app/presentation/pages/confirmation/widgets/confirmation_loaded_widget.dart';
import 'package:wedding_app/presentation/widgets/double_choice_dialog_widget.dart';

import 'confirmation_cubit.dart';

@RoutePage()
class ConfirmationPage extends BasePage {
  const ConfirmationPage({Key? key}) : super(key: key, backgroundColor: Colors.white);

  @override
  Widget buildContent(BuildContext context) {
    final cubit = useCubit<ConfirmationCubit>();

    useCubitListener<ConfirmationCubit, ConfirmationState>(cubit, listener: _cubitStateListener, listenWhen: _listenWhen);

    useEffect(
      () {
        cubit.init();
        return;
      },
      [cubit],
    );

    final state = useCubitBuilder(cubit, buildWhen: _buildWhen);

    return state.maybeWhen(
      loaded: () => ConfirmationLoadedWidget(
        cubit: cubit,
      ),
      orElse: () => Container(),
    );
  }

  bool _buildWhen(ConfirmationState state) => state is ConfirmationStateLoaded || state is ConfirmationStateIdle || state is ConfirmationStateDump;

  bool _listenWhen(ConfirmationState state) => state is! ConfirmationStateIdle;

  void _cubitStateListener(ConfirmationCubit cubit, ConfirmationState state, BuildContext context) {
    state.maybeWhen(
      sendConfirmation: ((userName, withPartner, partnerName, additionalInfo, contactNumber) => showDialog(
            context: context,
            builder: (BuildContext context) => const DoubleChoiceDialogWidget(
              title: "Wybierz formę wysłania potwierdzenia.",
              info: "Hej, wybierz czy potwierdzenie ma zostać wysłanę z pomocą wiadomości SMS, bądź e-mail",
              cancel: "Anuluj",
              firstOption: "SMS",
              secondOption: "E-mail",
            ),
          ).then(
            (value) async => value == null
                ? null
                : value == DialogAction.cancel
                    ? await cubit.refreshPage()
                    : {
                        await cubit.confirmAttend(value == DialogAction.firstOption ? ConfirmationChannel.sms : ConfirmationChannel.email, context, userName,
                            withPartner, partnerName, additionalInfo, contactNumber),
                      },
          )),
      orElse: () {},
    );
  }
}
