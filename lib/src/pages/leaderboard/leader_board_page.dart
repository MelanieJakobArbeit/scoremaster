import 'package:flutter/material.dart';
import 'package:scoremaster/src/models/game_model.dart';
import 'package:scoremaster/src/models/user_with_score_model.dart';
import 'package:scoremaster/src/services/score_service.dart';
import 'widgets/period.dart';
import 'widgets/first_three.dart';
import 'widgets/score_list.dart';
import '../../services/game_service.dart';

class LeaderBoardPage extends StatefulWidget {
  const LeaderBoardPage({Key? key}) : super(key: key);
  @override
  _LeaderBoardPage createState() => _LeaderBoardPage();
}

class _LeaderBoardPage extends State<LeaderBoardPage> {
  static const int numberTop = 3;
  static const int numberFirstElement = 0;

  List<UserWithScoreModel> _userScore = [];
  List<UserWithScoreModel> _threeTopUser = [];
  GameModel _game = const GameModel(name: '', uid: '');
  List<UserWithScoreModel> userScoreList = [];
  _LeaderBoardPage() {
    GameService.instance.getGames().then(
          (value) => setState(() {
            _game = value.data.first;
          }),
        );
  }
  void _addScore() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaderboard ' + _game.name),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
          tooltip: 'go back',
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
          future: ScoreService.instance.findAllByGameUid(_game.uid).then(
                (value) => {
                  _userScore = value.sublist(numberTop),
                  _threeTopUser = value.sublist(numberFirstElement, numberTop),
                },
              ),
          builder: (context, userSoreSnap) {
            return Column(
              children: <Widget>[
                const Period(),
                FirstThree(users: _threeTopUser),
                Expanded(
                  child: ScoreList(userScore: _userScore),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addScore,
        tooltip: 'add New Score',
        child: const Icon(Icons.add),
      ),
    );
  }
}
