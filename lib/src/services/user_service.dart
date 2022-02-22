import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:scoremaster/src/models/user_list_model.dart';
import 'package:scoremaster/src/models/user_model.dart';

class UserService {
  UserService._();

  static final UserService _instance = UserService._();

  static UserService get instance => _instance;

  Future<UserListModel> findAll() async {
    var response =
        await rootBundle.loadString('../../../assets/mock/data/users.json');

    List<dynamic> user = json.decode(response);
    UserListModel userList = UserListModel.fromJson({'data': user});

    return userList;
  }

  Future<UserModel> findOneByUid(String uid) async {
    UserListModel userList = await findAll();

    return userList.data.singleWhere((user) => user.uid == uid);
  }
}
