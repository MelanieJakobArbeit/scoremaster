import 'package:scoremaster/src/models/user_model.dart';

class UserService {
  UserService._();

  static final UserService _instance = UserService._();

  static UserService get instance => _instance;

  Future<UserModel> findOne(String uid) async {
    await Future.delayed(const Duration(milliseconds: 200));

    return const UserModel(
      uid: 'example',
      firstname: 'example',
      lastname: '',
      username: '',
    );
  }
}
