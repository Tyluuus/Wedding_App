import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/core/hooks/cubit_hook.dart';
import 'package:wedding_app/presentation/pages/base_page.dart';
import 'package:wedding_app/presentation/pages/location/widgets/location_loaded_widget.dart';

import 'location_cubit.dart';

@RoutePage()
class LocationPage extends BasePage {
  const LocationPage({Key? key}) : super(key: key, backgroundColor: Colors.white);

  @override
  Widget buildContent(BuildContext context) {
    final cubit = useCubit<LocationCubit>();

    useCubitListener<LocationCubit, LocationState>(cubit, listener: _cubitStateListener, listenWhen: _listenWhen);

    useEffect(
      () {
        cubit.init();
        return;
      },
      [cubit],
    );

    final state = useCubitBuilder(cubit, buildWhen: _buildWhen);

    return state.maybeWhen(
      loaded: () => LocationLoadedWidget(),
      orElse: () => Container(),
    );
  }

  bool _buildWhen(LocationState state) => state is LocationStateLoaded || state is LocationStateIdle;

  bool _listenWhen(LocationState state) => state is! LocationStateIdle;

  void _cubitStateListener(LocationCubit cubit, LocationState state, BuildContext context) {
    state.maybeWhen(
      orElse: () {},
    );
  }
}
