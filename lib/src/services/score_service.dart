import 'package:scoremaster/src/models/score_model.dart';

class ScoreService {
  ScoreService._();

  static final ScoreService _instance = ScoreService._();

  static ScoreService get instance => _instance;

  Future<ScoreModel> findOne(String uid) async {
    await Future.delayed(const Duration(milliseconds: 200));

    return ScoreModel(
      uid: 'example',
      gameUid: 'example',
      userUid: '',
      score: 0,
      date: DateTime.now(),
    );
  }
}
