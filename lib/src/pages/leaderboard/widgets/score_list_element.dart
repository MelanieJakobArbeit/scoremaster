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
  final LocalStorage storage = new LocalStorage('users');
  TextEditingController newScoreController = TextEditingController();

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
                    onPressed: () => saveNewScore(widget.userScore.user.uid),
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
                child: ScoreListUser(userScore: widget.userScore),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void saveNewScore(userId) {
    print('newScoreController' + newScoreController.text);
    // storage.setItem(
    //   userId,
    //   newScoreController,
    // );
    Navigator.pop(context, 'OK');
  }
}
