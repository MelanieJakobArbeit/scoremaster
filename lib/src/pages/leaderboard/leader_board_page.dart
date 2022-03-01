import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:scoremaster/src/models/game_model.dart';
import 'package:scoremaster/src/models/user_with_score_model.dart';
import 'package:scoremaster/src/services/score_service.dart';
import '../../router/score_app_router.dart';
import 'widgets/period.dart';
import 'widgets/first_three.dart';
import 'widgets/score_list.dart';
import '../../services/game_service.dart';
import 'package:go_router/go_router.dart';

class LeaderBoardPage extends StatefulWidget {
  const LeaderBoardPage({Key? key}) : super(key: key);
  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoardPage> {
  static const int numberTop = 3;
  static const int numberFirstElement = 0;

  List<UserWithScoreModel> _threeTopUser = [];
  GameModel _game = const GameModel(name: '', uid: '');
  List<UserWithScoreModel> userScoreList = [];
  final LocalStorage storage = LocalStorage('scroes');

  _LeaderBoardState() {
    GameService.instance.getGames().then(
          (value) => setState(() {
            _game = value.data.first;
          }),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaderboard ${_game.name}'),
        leading: IconButton(
          onPressed: () => {},
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
                  storage.setItem('scorelist', value),
                  _threeTopUser = value.sublist(numberFirstElement, numberTop),
                },
              ),
          builder: (context, userSoreSnapshot) {
            if (userSoreSnapshot.connectionState != ConnectionState.done) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return Column(
              children: <Widget>[
                const Period(),
                FirstThree(
                  users: _threeTopUser,
                ),
                Expanded(
                  child: ScoreList(
                    storage: storage,
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go(appRoutsList.values.last),
        tooltip: 'add New User Score',
        child: const Icon(Icons.add),
      ),
    );
  }
}
