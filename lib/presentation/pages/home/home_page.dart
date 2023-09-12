import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/core/hooks/cubit_hook.dart';
import 'package:wedding_app/presentation/pages/base_page.dart';
import 'package:wedding_app/presentation/pages/home/widgets/home_loaded_widget.dart';

import 'home_cubit.dart';

@RoutePage()
class HomePage extends BasePage {
  const HomePage({Key? key}) : super(key: key, backgroundColor: Colors.white);

  @override
  Widget buildContent(BuildContext context) {
    final cubit = useCubit<HomeCubit>();

    useCubitListener<HomeCubit, HomeState>(cubit, listener: _cubitStateListener, listenWhen: _listenWhen);

    useEffect(
      () {
        cubit.init();
        return;
      },
      [cubit],
    );

    final state = useCubitBuilder(cubit, buildWhen: _buildWhen);

    return state.maybeWhen(
      loaded: () => HomeLoadedWidget(
        cubit: cubit,
      ),
      orElse: () => Container(),
    );
  }

  bool _buildWhen(HomeState state) => state is HomeStateLoaded || state is HomeStateIdle;

  bool _listenWhen(HomeState state) => state is! HomeStateIdle;

  void _cubitStateListener(HomeCubit cubit, HomeState state, BuildContext context) {
    state.maybeWhen(
      orElse: () {},
    );
  }
}
