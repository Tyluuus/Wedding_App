import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

PageController usePageController({
  int initialPage = 0,
  double viewportFraction = 1.0,
  List<Object>? keys,
}) {
  return use(_PageControllerHook(
    initialPage,
    viewportFraction,
    keys: keys,
  ));
}

class _PageControllerHook extends Hook<PageController> {
  final int initialPage;
  final double viewportFraction;

  const _PageControllerHook(
      this.initialPage,
      this.viewportFraction, {
        List<Object>? keys,
      }) : super(keys: keys);

  @override
  HookState<PageController, Hook<PageController>> createState() => _PageControllerHookState();
}

class _PageControllerHookState extends HookState<PageController, _PageControllerHook> {
  late PageController controller;

  @override
  void initHook() {
    controller = PageController(
      initialPage: hook.initialPage,
      viewportFraction: hook.viewportFraction,
    );
  }

  @override
  PageController build(BuildContext context) => controller;

  @override
  void dispose() => controller.dispose();
}
