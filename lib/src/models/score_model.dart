import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scoremaster/src/models/user_model.dart';

part 'score_model.freezed.dart';

part 'score_model.g.dart';

@freezed
class ScoreModel with _$ScoreModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ScoreModel({
    required String uid,
    required String gameUid,
    required String userUid,
    required int score,
    required DateTime date,
    @JsonKey(
      fromJson: ScoreModel._userModelFromJson,
      toJson: ScoreModel._userModelToJson,
    )
        UserModel? user,
  }) = _ScoreModel;

  static UserModel? _userModelFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserModel.fromJson(json);
  }

  static Map<String, dynamic>? _userModelToJson(UserModel? user) {
    if (user == null) {
      return null;
    }

    return user.toJson();
  }

  factory ScoreModel.fromJson(Map<String, dynamic> json) => _$ScoreModelFromJson(json);
}
