import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedding_app/presentation/pages/location/widgets/map_widget.dart';
import 'package:wedding_app/presentation/styles/dimensions.dart';
import 'package:wedding_app/presentation/widgets/divider_widget.dart';

class LocationLoadedWidget extends HookWidget {
  const LocationLoadedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            AppLocalizations.of(context)!.localizations_page_label,
            style: Theme.of(context).primaryTextTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: kPageSidePaddingValue,
              ),
              const DividerWidget(),
              Padding(
                padding: kDefaultSmallVerticalPadding,
                child: Text(
                  AppLocalizations.of(context)!.wedding_label,
                  style: Theme.of(context).primaryTextTheme.titleLarge,
                ),
              ),
              Text(
                AppLocalizations.of(context)!.wedding_address,
                textAlign: TextAlign.center,
                style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(height: 1.5),
              ),
              Padding(
                padding: kDefaultSmallVerticalPadding,
                child: Container(
                  height: kDefaultMapHeight,
                  width: MediaQuery.of(context).size.width - 2 * kPageSidePaddingValue,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(kDefaultButtonBorderRadiusValue),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(kDefaultButtonBorderRadiusValue),
                        child: const MapWidget(
                          centerPoint: LatLng(52.22973819973857, 21.02232858465762),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          final url = Uri.parse("https://goo.gl/maps/QfxxCEWvFQGgg9HDA");
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Container(color: Colors.transparent),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: kDefaultSmallVerticalPadding,
                child: DividerWidget(),
              ),
              Padding(
                padding: kDefaultSmallVerticalPadding,
                child: Text(
                  AppLocalizations.of(context)!.party_label,
                  style: Theme.of(context).primaryTextTheme.titleLarge,
                ),
              ),
              Text(
                AppLocalizations.of(context)!.party_address,
                textAlign: TextAlign.center,
                style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(height: 1.5),
              ),
              Padding(
                padding: kDefaultSmallVerticalPadding,
                child: Container(
                  height: kDefaultMapHeight,
                  width: MediaQuery.of(context).size.width - 2 * kPageSidePaddingValue,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(kDefaultButtonBorderRadiusValue),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(kDefaultButtonBorderRadiusValue),
                        child: const MapWidget(
                          centerPoint: LatLng(52.0126153746808, 20.5214383),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          final url = Uri.parse("https://goo.gl/maps/vdsu1hBEA91CGuUg7");
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url, mode: LaunchMode.externalApplication);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Container(color: Colors.transparent),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: kDefaultBottomMarginValue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
