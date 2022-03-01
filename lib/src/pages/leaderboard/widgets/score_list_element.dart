import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:scoremaster/src/app_spacing.dart';
import 'package:scoremaster/src/models/score_model.dart';
import 'package:scoremaster/src/models/user_with_score_model.dart';
import 'package:scoremaster/src/pages/leaderboard/widgets/rank.dart';
import 'package:scoremaster/src/pages/leaderboard/widgets/score_list_user.dart';
import 'package:flutter/services.dart';

class ScoreListElement extends StatefulWidget {
  final UserWithScoreModel userScore;
  final LocalStorage storage;
  final int rank;
  final Function refreshParent;
  const ScoreListElement({
    Key? key,
    required this.userScore,
    required this.rank,
    required this.storage,
    required this.refreshParent,
  }) : super(key: key);
  @override
  _ScoreListElement createState() => _ScoreListElement();
}

class _ScoreListElement extends State<ScoreListElement> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController newScoreController = TextEditingController();
  final int score = -1;
  final int negativScore = -1;

  void _saveNewScore(userId) {
    List<UserWithScoreModel> scoreList = widget.storage.getItem('scorelist');
    UserWithScoreModel currentScore = scoreList.firstWhere((element) => element.user.uid == userId);
    UserWithScoreModel newScore = UserWithScoreModel(
      user: currentScore.user,
      score: ScoreModel(
        uid: currentScore.score.uid,
        gameUid: currentScore.score.gameUid,
        userUid: currentScore.score.userUid,
        score: int.parse(newScoreController.text),
        date: DateTime.now(),
      ),
    );
    scoreList.remove(currentScore);
    scoreList.add(newScore);
    scoreList.sort((b, a) => a.score.score.compareTo(b.score.score));
    widget.storage.setItem('scorelist', scoreList);
    widget.refreshParent();
    Navigator.pop(context, 'OK');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Score von $widget.userScore.user.username bearbeiten:'),
                content: Form(
                  key: _formKey,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'New Score',
                      border: OutlineInputBorder(),
                    ),
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                    controller: newScoreController,
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Abbrechen'),
                  ),
                  TextButton(
                    onPressed: () => _saveNewScore(widget.userScore.user.uid),
                    child: const Text('Speichern'),
                  ),
                ],
              );
            },
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Rank(rank: widget.rank),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
                child: ScoreListUser(
                  userScore: widget.userScore,
                  savedScores: score != negativScore ? score : widget.userScore.score.score,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
