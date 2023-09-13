import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/presentation/pages/info/info_cubit.dart';
import 'package:wedding_app/presentation/pages/info/widgets/no_info_widget.dart';
import 'package:wedding_app/presentation/styles/dimensions.dart';
import 'package:wedding_app/presentation/widgets/divider_widget.dart';
import 'package:wedding_app/presentation/widgets/spinner_widget.dart';
import 'package:wedding_app/presentation/widgets/timeout_widget.dart';

class InfoLoadedWidget extends HookWidget {
  final InfoCubit cubit;

  const InfoLoadedWidget({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final informationStream = useStream(cubit.informationStream);
    final isLoading = useState(true);
    final timeoutStream = useStream(cubit.timeoutStream);
    final isTimeout = useState(false);

    if (informationStream.hasData) {
      isLoading.value = false;
    }

    if (timeoutStream.hasData) {
      isTimeout.value = timeoutStream.data!;
    }

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
        child: isTimeout.value
            ? TimeoutWidget()
            : isLoading.value
                ? const SpinnerWidget()
                : (informationStream.data!.isEmpty)
                    ? const NoInfoWidget()
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
