import 'dart:convert';

import 'package:scoremaster/src/models/game_model.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:developer';

class GameService {
  GameService._();

  static final GameService _instance = GameService._();

  static GameService get instance => _instance;

  Future<List> getGames() async {
    var response =
        await rootBundle.loadString('../../../assets/mock/data/games.json');
    var games = json.decode(response);

    return games;
  }

  Future<GameModel> findOne(String uid) async {
    await Future.delayed(const Duration(milliseconds: 200));

    return const GameModel(
      uid: 'example',
      name: 'example',
    );
  }
}
