import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scoremaster/src/models/score_model.dart';

part 'score_list_model.freezed.dart';

part 'score_list_model.g.dart';

@freezed
class ScoreListModel with _$ScoreListModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ScoreListModel(List<ScoreModel> data) = _ScoreListModel;
  factory ScoreListModel.fromJson(Map<String, dynamic> json) =>
      _$ScoreListModelFromJson(json);
}
