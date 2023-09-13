import 'package:freezed_annotation/freezed_annotation.dart';

part 'information_model.g.dart';

@JsonSerializable()
class InformationModel {
  final String title;
  final String body;
  final String creationDate;

  InformationModel({
    required this.title,
    required this.body,
    required this.creationDate,
  });

  factory InformationModel.fromJson(Map<String, dynamic> json) => _$InformationModelFromJson(json);

  Map<String, dynamic> toJson() => _$InformationModelToJson(this);
}
