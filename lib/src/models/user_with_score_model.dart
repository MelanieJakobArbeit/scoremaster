import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scoremaster/src/models/score_model.dart';
import 'package:scoremaster/src/models/user_model.dart';

part 'user_with_score_model.freezed.dart';

part 'user_with_score_model.g.dart';

@freezed
class UserWithScoreModel with _$UserWithScoreModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UserWithScoreModel({
    required UserModel user,
    required ScoreModel score,
  }) = _UserWithScoreModel;

  factory UserWithScoreModel.fromJson(Map<String, dynamic> json) =>
      _$UserWithScoreModelFromJson(json);
}
