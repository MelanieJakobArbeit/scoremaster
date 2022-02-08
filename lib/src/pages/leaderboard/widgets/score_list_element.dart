import 'package:flutter/material.dart';
import 'package:scoremaster/src/app_spacing.dart';
import 'package:scoremaster/src/pages/leaderboard/widgets/rank.dart';
import 'package:scoremaster/src/pages/leaderboard/widgets/score_list_user.dart';

class ScoreListElement extends StatefulWidget {
  const ScoreListElement({Key? key}) : super(key: key);
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
          children: const [
            Rank(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.xl),
              child: ScoreListUser(),
            ),
          ],
        ),
      ],
    );
  }
}
