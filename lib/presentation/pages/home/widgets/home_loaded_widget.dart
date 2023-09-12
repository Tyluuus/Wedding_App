import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/presentation/pages/confirmation/confirmation_page.dart';
import 'package:wedding_app/presentation/pages/contact/contact_page.dart';
import 'package:wedding_app/presentation/pages/home/home_cubit.dart';
import 'package:wedding_app/presentation/pages/home/widgets/home_loaded_widget_content.dart';
import 'package:wedding_app/presentation/pages/info/info_page.dart';
import 'package:wedding_app/presentation/pages/location/location_page.dart';

class HomeLoadedWidget extends HookWidget {
  final HomeCubit cubit;
  final _selectedIndex = useState(0);

  HomeLoadedWidget({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent.withOpacity(0.1),
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: Theme.of(context).primaryTextTheme.labelSmall,
        selectedLabelStyle: Theme.of(context).primaryTextTheme.labelMedium,
        fixedColor: Theme.of(context).shadowColor,
        type: BottomNavigationBarType.fixed,
        onTap: onButtonTapped,
        currentIndex: _selectedIndex.value,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Theme.of(context).shadowColor,
              ),
              label: AppLocalizations.of(context)!.nav_bar_home),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pin_drop,
                color: Theme.of(context).shadowColor,
              ),
              label: AppLocalizations.of(context)!.nav_bar_location),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.check,
                color: Theme.of(context).shadowColor,
              ),
              label: AppLocalizations.of(context)!.nav_bar_confirm),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.info,
                color: Theme.of(context).shadowColor,
              ),
              label: AppLocalizations.of(context)!.nav_bar_info),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.phone,
                color: Theme.of(context).shadowColor,
              ),
              label: AppLocalizations.of(context)!.nav_bar_contact),
        ],
      ),
      body: _selectedIndex.value == 0
          ? HomeLoadedWidgetContent(cubit: cubit)
          : _selectedIndex.value == 1
              ? const LocationPage()
              : _selectedIndex.value == 2
                  ? const ConfirmationPage()
                  : _selectedIndex.value == 3
                      ? const InfoPage()
                      : const ContactPage(),
    );
  }

  Future<void> onButtonTapped(int index) async {
    if (index != 0) await cubit.stopCounter();
    _selectedIndex.value = index;
  }
}
