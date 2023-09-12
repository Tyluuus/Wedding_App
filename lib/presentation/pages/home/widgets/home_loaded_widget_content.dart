import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/extensions/int_extension.dart';
import 'package:wedding_app/presentation/pages/home/home_cubit.dart';
import 'package:wedding_app/presentation/pages/home/models/review_model.dart';
import 'package:wedding_app/presentation/pages/home/widgets/review_widget.dart';
import 'package:wedding_app/presentation/styles/dimensions.dart';

class HomeLoadedWidgetContent extends HookWidget {
  final HomeCubit cubit;

  const HomeLoadedWidgetContent({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = useState(const Duration());
    cubit.countDown(counter);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            AppLocalizations.of(context)!.home_couple_names,
            style: Theme.of(context).primaryTextTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: kPageSidePaddingValue,
              ),
              Padding(
                padding: kDefaultDividerPadding,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(kDefaultImageBorderRadiusValue),
                  child: const Image(
                    image: AssetImage('assets/img/beauty.jpg'),
                  ),
                ),
              ),
              Padding(
                padding: kDefaultSmallVerticalPadding,
                child: Text(
                  AppLocalizations.of(context)!.about_us_label,
                  style: Theme.of(context).primaryTextTheme.titleMedium,
                ),
              ),
              Padding(
                padding: kDefaultDividerPadding,
                child: Text(
                  AppLocalizations.of(context)!.about_us_text,
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).primaryTextTheme.bodyLarge,
                ),
              ),
              Padding(
                padding: kDefaultSmallVerticalPadding,
                child: Text(
                  AppLocalizations.of(context)!.reviews_label,
                  style: Theme.of(context).primaryTextTheme.titleMedium,
                ),
              ),
              Padding(
                padding: kDefaultSmallVerticalPadding,
                child: ReviewWidget(
                  iconOnLeft: true,
                  review: ReviewModel(
                    starsNumber: 3,
                    reviewText: 'Zajebiste ziomki',
                    author: 'Piotrek z Ciechanowa',
                  ),
                ),
              ),
              Padding(
                padding: kDefaultSmallVerticalPadding,
                child: Text(
                  AppLocalizations.of(context)!.counter_label,
                  style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(fontSize: 28),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        counter.value.inSeconds.getCounterValue(),
                        style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(fontSize: 28),
                      ),
                      Text(
                        AppLocalizations.of(context)!.counter_legend,
                        style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(
                              color: Colors.black.withOpacity(0.7),
                            ),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: kDefaultSmallVerticalPadding,
                child: InkWell(
                  onTap: () {
                    cubit.createCalendarEvent();
                  },
                  child: Container(
                    height: kDefaultButtonHeight,
                    width: kDefaultButtonWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kDefaultBorderRadiusValue),
                      color: Theme.of(context).shadowColor,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: kDefaultRowRightPadding,
                          child: Icon(
                            Icons.calendar_month,
                            color: Theme.of(context).focusColor,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.add_to_calendar_button_label,
                          style: Theme.of(context).primaryTextTheme.bodySmall,
                        ),
                      ],
                    ),
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
