import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/presentation/styles/dimensions.dart';
import 'package:wedding_app/presentation/widgets/divider_widget.dart';

class InfoLoadedWidget extends HookWidget {
  const InfoLoadedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isAnyData = useState(true);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            AppLocalizations.of(context)!.information_page_label,
            style: Theme.of(context).primaryTextTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: isAnyData.value
            ? Center(
                child: Padding(
                  padding: kPageSidePadding,
                  child: Text(
                    AppLocalizations.of(context)!.information_page_info,
                    style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(fontSize: 32.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: kDefaultVerticalPadding,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        AppLocalizations.of(context)!.information_page_label,
                        style: Theme.of(context).primaryTextTheme.headlineMedium,
                      ),
                    ),
                  ),
                  const DividerWidget(),
                  Padding(
                    padding: kPageSidePadding,
                    child: Text(
                      AppLocalizations.of(context)!.information_page_label,
                      style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(fontSize: 32.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: kDefaultBottomMarginValue,
                  ),
                ],
              ),
      ),
    );
  }
}
