import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/core/hooks/cubit_hook.dart';
import 'package:wedding_app/presentation/pages/base_page.dart';
import 'package:wedding_app/presentation/pages/info/widgets/info_loaded_widget.dart';

import 'info_cubit.dart';

@RoutePage()
class InfoPage extends BasePage {
  const InfoPage({Key? key}) : super(key: key, backgroundColor: Colors.white);

  @override
  Widget buildContent(BuildContext context) {
    final cubit = useCubit<InfoCubit>();

    useCubitListener<InfoCubit, InfoState>(cubit, listener: _cubitStateListener, listenWhen: _listenWhen);

    useEffect(
      () {
        cubit.init();
        return;
      },
      [cubit],
    );

    final state = useCubitBuilder(cubit, buildWhen: _buildWhen);

    return state.maybeWhen(
      loaded: () => InfoLoadedWidget(
        cubit: cubit,
      ),
      orElse: () => Container(),
    );
  }

  bool _buildWhen(InfoState state) => state is InfoStateLoaded || state is InfoStateIdle;

  bool _listenWhen(InfoState state) => state is! InfoStateIdle;

  void _cubitStateListener(InfoCubit cubit, InfoState state, BuildContext context) {
    state.maybeWhen(
      orElse: () {},
    );
  }
}
