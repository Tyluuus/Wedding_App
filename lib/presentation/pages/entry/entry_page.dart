import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/core/hooks/cubit_hook.dart';
import 'package:wedding_app/presentation/pages/base_page.dart';
import 'package:wedding_app/presentation/pages/entry/widgets/entry_loaded_widget.dart';
import 'package:wedding_app/presentation/routing/main_router.dart';

import 'entry_cubit.dart';

@RoutePage()
class EntryPage extends BasePage {
  const EntryPage({Key? key}) : super(key: key, backgroundColor: Colors.white);

  @override
  Widget buildContent(BuildContext context) {
    final cubit = useCubit<EntryCubit>();

    useCubitListener<EntryCubit, EntryState>(cubit, listener: _cubitStateListener, listenWhen: _listenWhen);

    useEffect(
      () {
        cubit.init();
        return;
      },
      [cubit],
    );

    final state = useCubitBuilder(cubit, buildWhen: _buildWhen);

    return state.maybeWhen(
      loaded: () => EntryLoadedWidget(
        cubit: cubit,
      ),
      orElse: () => Container(),
    );
  }

  bool _buildWhen(EntryState state) => state is EntryStateLoaded || state is EntryStateIdle;

  bool _listenWhen(EntryState state) => state is! EntryStateIdle;

  void _cubitStateListener(EntryCubit cubit, EntryState state, BuildContext context) {
    state.maybeWhen(
      navigateToHome: () {
        context.router.replace(const HomeRoute());
      },
      orElse: () {},
    );
  }
}
