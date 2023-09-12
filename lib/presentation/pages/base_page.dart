import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/core/hooks/cubit_hook.dart';

import 'base_page_cubit.dart';

abstract class BasePage extends HookWidget {
  final Color backgroundColor;

  const BasePage({
    Key? key,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = useCubit<BasePageCubit>();

    useCubitListener<BasePageCubit, BasePageState>(cubit, listener: _cubitStateListener, listenWhen: _listenWhen);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).primaryColor,
        systemNavigationBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: buildContent(context),
        ),
      ),
    );
  }

  Widget buildContent(BuildContext context);

  bool _listenWhen(BasePageState state) => state is! BasePageStateIdle;

  void _cubitStateListener(BasePageCubit cubit, BasePageState state, BuildContext context) {
    state.maybeWhen(
      orElse: () {},
    );
  }
}
