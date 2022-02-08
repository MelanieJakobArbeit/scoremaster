import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scoremaster/src/models/game_model.dart';

part 'game_list_model.freezed.dart';

part 'game_list_model.g.dart';

@freezed
class GameListModel with _$GameListModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory GameListModel(List<GameModel> data) = _GameListModel;
  factory GameListModel.fromJson(Map<String, dynamic> json) =>
      _$GameListModelFromJson(json);
}
