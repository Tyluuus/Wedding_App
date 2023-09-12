import 'package:flutter/material.dart';

class HomeTileModel {
  final String title;
  final Icon icon;
  final Function() onTap;

  HomeTileModel({
    required this.title,
    required this.icon,
    required this.onTap,
  });
}
