import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MapPin extends HookWidget {
  const MapPin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.pin_drop_rounded);
  }
}
