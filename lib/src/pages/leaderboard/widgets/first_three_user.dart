import 'package:flutter/material.dart';
import 'package:scoremaster/src/app_spacing.dart';
import 'package:scoremaster/src/models/user_with_score_model.dart';
import 'package:scoremaster/src/pages/leaderboard/widgets/rank.dart';
import 'package:scoremaster/src/pages/leaderboard/widgets/user_icon.dart';
import '../../../app_theme.dart';

class FirstThreeUser extends StatefulWidget {
  final double radiusImage;
  final double radiusBackground;
  final UserWithScoreModel user;
  final int rank;
  static const double initialValue = 0;
  const FirstThreeUser({
    Key? key,
    this.radiusImage = initialValue,
    this.radiusBackground = initialValue,
    required this.user,
    required this.rank,
  }) : super(key: key);
  @override
  _FirstThreeUser createState() => _FirstThreeUser();
}

class _FirstThreeUser extends State<FirstThreeUser> {
  final int indexBalance = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: AppSpacing.xl,
        top: AppSpacing.l,
      ),
      child: Column(
        children: <Widget>[
          Rank(rank: widget.rank + indexBalance),
          UserIcon(
            radiusImage: widget.radiusImage,
            radiusBackground: widget.radiusBackground,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: AppSpacing.l,
              bottom: AppSpacing.xs,
            ),
            child: Text(widget.user.user.username),
          ),
          Text(
            widget.user.score.score.toString(),
            style: const TextStyle(color: AppColors.accent),
          ),
        ],
      ),
    );
  }
}
