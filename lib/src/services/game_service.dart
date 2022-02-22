import 'dart:convert';

import 'package:scoremaster/src/models/game_list_model.dart';
import 'package:flutter/services.dart' show rootBundle;

class GameService {
  GameService._();

  static final GameService _instance = GameService._();

  static GameService get instance => _instance;

  Future<GameListModel> getGames() async {
    var response =
        await rootBundle.loadString('../../../assets/mock/data/games.json');

    List<dynamic> games = json.decode(response);
    GameListModel gameList = GameListModel.fromJson({'data': games});

    return gameList;
  }
}
