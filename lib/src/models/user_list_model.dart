import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scoremaster/src/models/user_model.dart';

part 'user_list_model.freezed.dart';

part 'user_list_model.g.dart';

@freezed
class UserListModel with _$UserListModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UserListModel(List<UserModel> data) = _UserListModel;
  factory UserListModel.fromJson(Map<String, dynamic> json) =>
      _$UserListModelFromJson(json);
}
