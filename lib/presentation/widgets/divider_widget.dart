import 'package:flutter/material.dart';
import 'package:wedding_app/presentation/styles/dimensions.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kDefaultDividerPadding,
      child: Container(
        height: 0.5,
        color: Colors.black,
      ),
    );
  }
}
