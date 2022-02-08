import 'package:flutter/material.dart';
import 'package:scoremaster/src/app_spacing.dart';

import '../../../app_theme.dart';

class ScoreListUser extends StatefulWidget {
  const ScoreListUser({Key? key}) : super(key: key);
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
        children: const [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/mock/pictures/profile-1.jpg'),
          ),
          Padding(
            padding: EdgeInsets.only(left: AppSpacing.l, right: AppSpacing.xxl),
            child: Text('Name'),
          ),
          Padding(
            padding: EdgeInsets.only(right: AppSpacing.l),
            child: Text(
              'Punkte',
              style: TextStyle(color: AppColors.accent),
            ),
          ),
        ],
      ),
    );
  }
}
