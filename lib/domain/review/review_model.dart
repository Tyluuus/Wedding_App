import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_model.g.dart';

@JsonSerializable()
class ReviewModel {
  final int starsNumber;
  final String reviewText;
  final String author;

  ReviewModel({
    required this.starsNumber,
    required this.reviewText,
    required this.author,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) => _$ReviewModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewModelToJson(this);
}
