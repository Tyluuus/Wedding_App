import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/core/hooks/cubit_hook.dart';
import 'package:wedding_app/presentation/pages/base_page.dart';
import 'package:wedding_app/presentation/pages/contact/widgets/contact_loaded_widget.dart';

import 'contact_cubit.dart';

@RoutePage()
class ContactPage extends BasePage {
  const ContactPage({Key? key}) : super(key: key, backgroundColor: Colors.white);

  @override
  Widget buildContent(BuildContext context) {
    final cubit = useCubit<ContactCubit>();

    useCubitListener<ContactCubit, ContactState>(cubit, listener: _cubitStateListener, listenWhen: _listenWhen);

    useEffect(
      () {
        cubit.init();
        return;
      },
      [cubit],
    );

    final state = useCubitBuilder(cubit, buildWhen: _buildWhen);

    return state.maybeWhen(
      loaded: () => const ContactLoadedWidget(),
      orElse: () => Container(),
    );
  }

  bool _buildWhen(ContactState state) => state is ContactStateLoaded || state is ContactStateIdle;

  bool _listenWhen(ContactState state) => state is! ContactStateIdle;

  void _cubitStateListener(ContactCubit cubit, ContactState state, BuildContext context) {
    state.maybeWhen(
      orElse: () {},
    );
  }
}
