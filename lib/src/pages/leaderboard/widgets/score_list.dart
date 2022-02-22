import 'package:flutter/material.dart';
import 'package:scoremaster/src/models/user_with_score_model.dart';
import 'package:scoremaster/src/pages/leaderboard/widgets/score_list_element.dart';

class ScoreList extends StatefulWidget {
  final List<UserWithScoreModel> userScore;
  const ScoreList({
    Key? key,
    required this.userScore,
  }) : super(key: key);
  @override
  _ScoreList createState() => _ScoreList();
}

class _ScoreList extends State<ScoreList> {
  static const int indexBalancer = 4;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return ScoreListElement(
          userScore: widget.userScore[index],
          rank: index + indexBalancer,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 15,
        );
      },
      itemCount: widget.userScore.length,
    );
  }
}
