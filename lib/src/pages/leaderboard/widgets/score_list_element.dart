import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:scoremaster/src/app_spacing.dart';
import 'package:scoremaster/src/models/user_with_score_model.dart';
import 'package:scoremaster/src/pages/leaderboard/widgets/rank.dart';
import 'package:scoremaster/src/pages/leaderboard/widgets/score_list_user.dart';
import 'package:flutter/services.dart';

class ScoreListElement extends StatefulWidget {
  final UserWithScoreModel userScore;
  final int rank;
  const ScoreListElement({
    Key? key,
    required this.userScore,
    required this.rank,
  }) : super(key: key);
  @override
  _ScoreListElement createState() => _ScoreListElement();
}

class _ScoreListElement extends State<ScoreListElement> {
  final _formKey = GlobalKey<FormState>();
  final LocalStorage storage = LocalStorage('scroes');

  TextEditingController newScoreController = TextEditingController();
  int score = -1;

  void getScore() {
    setState(() {
      if (storage.getItem(widget.userScore.user.uid) != null) {
        score = int.parse(storage.getItem(widget.userScore.user.uid));
      }
    });
  }

  void _saveNewScore(userId) {
    storage.setItem(
      userId,
      newScoreController.text,
    );
    getScore();
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
                title: Text('Score von ' + widget.userScore.user.username + ' bearbeiten:'),
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
                  savedScores: score != -1 ? score : widget.userScore.score.score,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
