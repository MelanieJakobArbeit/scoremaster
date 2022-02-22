import 'package:flutter/material.dart';
import 'package:scoremaster/src/app_spacing.dart';
import 'package:scoremaster/src/models/user_with_score_model.dart';
import 'package:scoremaster/src/pages/leaderboard/widgets/rank.dart';
import 'package:scoremaster/src/pages/leaderboard/widgets/score_list_user.dart';

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
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Rank(rank: widget.rank),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
              child: ScoreListUser(userScore: widget.userScore),
            ),
          ],
        ),
      ],
    );
  }
}
