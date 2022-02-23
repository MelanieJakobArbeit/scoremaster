import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:scoremaster/src/models/score_list_model.dart';
import 'package:scoremaster/src/models/user_model.dart';
import 'package:scoremaster/src/models/user_with_score_model.dart';
import 'package:scoremaster/src/services/user_service.dart';

class ScoreService {
  ScoreService._();

  static final ScoreService _instance = ScoreService._();

  static ScoreService get instance => _instance;

  Future<List<UserWithScoreModel>> findAllByGameUid(
    String gameUid,
  ) async {
    var response = await rootBundle.loadString('../../../assets/mock/data/scores.json');

    List<dynamic> scores = json.decode(response);
    ScoreListModel scoreList = ScoreListModel.fromJson({'data': scores});
    List<UserWithScoreModel> userWithScoreListByGame = [];

    for (var scoreValue in scoreList.data) {
      if (scoreValue.gameUid == gameUid) {
        UserModel user = await UserService.instance.findOneByUid(scoreValue.userUid);
        userWithScoreListByGame.add(UserWithScoreModel(user: user, score: scoreValue));
      }
    }

    userWithScoreListByGame.sort((b, a) => a.score.score.compareTo(b.score.score));

    return userWithScoreListByGame;
  }

  // Future void insertNewScore() async{

  // }
}
