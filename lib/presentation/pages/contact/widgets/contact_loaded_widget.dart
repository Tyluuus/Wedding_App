import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/presentation/styles/dimensions.dart';
import 'package:wedding_app/presentation/widgets/divider_widget.dart';

class ContactLoadedWidget extends HookWidget {
  const ContactLoadedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            AppLocalizations.of(context)!.contact_page_label,
            style: Theme.of(context).primaryTextTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: kPageSidePaddingValue,
            ),
            const DividerWidget(),
            Padding(
              padding: kDefaultAllSidesNotEqualPaddingReverse,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(kDefaultImageBorderRadiusValue),
                child: const Image(
                  image: AssetImage('assets/img/beauty.jpg'),
                ),
              ),
            ),
            const DividerWidget(),
            const SizedBox(
              height: kDefaultBottomMarginValue,
            ),
          ],
        ),
      ),
    );
  }
}
