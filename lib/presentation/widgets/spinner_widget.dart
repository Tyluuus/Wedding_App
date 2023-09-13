import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SpinnerWidget extends HookWidget {
  const SpinnerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Theme.of(context).highlightColor,
      ),
    );
  }
}
