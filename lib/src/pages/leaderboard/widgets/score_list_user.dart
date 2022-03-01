import 'package:flutter/material.dart';
import 'package:scoremaster/src/app_spacing.dart';
import 'package:scoremaster/src/models/user_with_score_model.dart';

import '../../../app_theme.dart';

class ScoreListUser extends StatefulWidget {
  final UserWithScoreModel userScore;
  final int savedScores;
  const ScoreListUser({
    Key? key,
    required this.userScore,
    required this.savedScores,
  }) : super(key: key);
  @override
  _ScoreListUser createState() => _ScoreListUser();
}

class _ScoreListUser extends State<ScoreListUser> {
  double radiusBackgroundColor = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radiusBackgroundColor),
        color: AppColors.primary,
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/mock/pictures/profile-1.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: AppSpacing.l,
              right: AppSpacing.xxl,
            ),
            child: Text(
              widget.userScore.user.username,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: AppSpacing.l),
            child: Text(
              widget.savedScores.toString(),
              style: const TextStyle(color: AppColors.accent),
            ),
          ),
        ],
      ),
    );
  }
}
