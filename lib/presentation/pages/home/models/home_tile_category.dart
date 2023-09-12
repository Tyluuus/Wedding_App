import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/presentation/pages/home/models/home_tile_model.dart';
import 'package:wedding_app/presentation/routing/main_router.dart';
import 'package:wedding_app/presentation/styles/dimensions.dart';

enum HomeTileCategory {
  localization,
  form,
  info,
  contact;

  HomeTileModel getModel(BuildContext context) {
    switch (this) {
      case HomeTileCategory.localization:
        return HomeTileModel(
          title: "Lokalizacja",
          icon: Icon(
            Icons.map_outlined,
            size: kDefaultIconSize,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          onTap: () {
            context.router.push(const LocationRoute());
          },
        );
      case HomeTileCategory.form:
        return HomeTileModel(
          title: "Potwierdzenie obecności",
          icon: Icon(
            Icons.check,
            size: kDefaultIconSize,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          onTap: () {
            context.router.push(const ConfirmationRoute());
          },
        );
      case HomeTileCategory.info:
        return HomeTileModel(
          title: "Informacje",
          icon: Icon(
            Icons.info_outline,
            size: kDefaultIconSize,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          onTap: () {
            context.router.push(const InfoRoute());
          },
        );
      case HomeTileCategory.contact:
        return HomeTileModel(
          title: "Kontakt",
          icon: Icon(
            Icons.phone,
            size: kDefaultIconSize,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          onTap: () {
            context.router.push(const ContactRoute());
          },
        );
    }
  }
}
