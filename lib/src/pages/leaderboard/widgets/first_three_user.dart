import 'package:flutter/material.dart';
import 'package:scoremaster/src/app_spacing.dart';
import 'package:scoremaster/src/pages/leaderboard/widgets/rank.dart';
import 'package:scoremaster/src/pages/leaderboard/widgets/user_Icon.dart';

import '../../../app_icon_size.dart';
import '../../../app_theme.dart';

class FirstThreeUser extends StatefulWidget {
  final double radiusImage;
  final double radiusBackground;
  static const double initialValue = 0;
  const FirstThreeUser({
    Key? key,
    this.radiusImage = initialValue,
    this.radiusBackground = initialValue,
  }) : super(key: key);
  @override
  _FirstThreeUser createState() => _FirstThreeUser();
}

class _FirstThreeUser extends State<FirstThreeUser> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: AppSpacing.xl,
        top: AppSpacing.l,
      ),
      child: Column(
        children: <Widget>[
          const Rank(),
          UserIcon(
            radiusImage: widget.radiusImage,
            radiusBackground: widget.radiusBackground,
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: AppSpacing.l,
              bottom: AppSpacing.xs,
            ),
            child: Text('Name'),
          ),
          const Text(
            'Score',
            style: TextStyle(color: AppColors.accent),
          ),
        ],
      ),
    );
  }
}
