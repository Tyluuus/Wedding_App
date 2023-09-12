import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoWidget extends HookWidget {
  const LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 60, 60),
            child: Text(
              "J",
              style: GoogleFonts.alexBrush(
                fontSize: 90,
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(0.72),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Transform.rotate(
            angle: 2.35,
            child: Container(
              color: Colors.black,
              height: 3,
              width: 120,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(70, 70, 0, 0),
            child: Text(
              "P",
              style: GoogleFonts.alexBrush(
                fontSize: 90,
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(0.72),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
