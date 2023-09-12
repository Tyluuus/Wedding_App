import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/presentation/pages/home/models/review_model.dart';
import 'package:wedding_app/presentation/styles/dimensions.dart';

class ReviewWidget extends HookWidget {
  final ReviewModel review;
  final bool iconOnLeft;

  const ReviewWidget({
    Key? key,
    required this.review,
    this.iconOnLeft = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: kDefaultDividerPadding,
      child: Row(
        children: [
          iconOnLeft
              ? const Padding(
                  padding: kDefaultRowRightPadding,
                  child: Icon(
                    Icons.person,
                    size: kReviewerIconSize,
                  ),
                )
              : Container(),
          Container(
            width: screenWidth - 3 * kPageSidePaddingValue - kReviewerIconSize,
            decoration: BoxDecoration(
              color: Theme.of(context).focusColor,
              border: Border.all(color: Theme.of(context).dividerColor),
              borderRadius: BorderRadius.circular(kDefaultButtonBorderRadiusValue),
            ),
            child: Padding(
              padding: kDefaultSmallAllSidesEqualPadding,
              child: Column(
                children: [
                  Row(
                    children: [
                      for (int index = 0; index < 5; index++) ...[
                        index < review.starsNumber
                            ? const Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              )
                            : const Icon(Icons.star_border),
                      ],
                    ],
                  ),
                  Padding(
                    padding: kDefaultReviewVerticalPadding,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(review.reviewText),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text("~ ${review.author}"),
                  )
                ],
              ),
            ),
          ),
          !iconOnLeft
              ? const Padding(
                  padding: kDefaultReviewLeftPadding,
                  child: Icon(
                    Icons.person,
                    size: kReviewerIconSize,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
