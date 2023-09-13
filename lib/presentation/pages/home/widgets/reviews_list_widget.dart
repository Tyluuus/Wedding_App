import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wedding_app/domain/review/review_model.dart';
import 'package:wedding_app/presentation/pages/home/widgets/review_widget.dart';
import 'package:wedding_app/presentation/styles/dimensions.dart';

class ReviewListWidget extends HookWidget {
  final List<ReviewModel> reviews;

  const ReviewListWidget({
    Key? key,
    required this.reviews,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kDefaultDividerPadding,
      child: Column(
        children: [
          for (int index = 0; index < reviews.length; index++) ...[
            ReviewWidget(
              review: reviews[index],
              iconOnLeft: index % 2 == 0,
            ),
          ],
        ],
      ),
    );
  }
}
