import 'package:flutter/material.dart';
import 'package:scoremaster/src/app_theme.dart';
import 'package:scoremaster/src/pages/leaderboard/widgets/user_Icon.dart';

class FirstThreeUser extends StatefulWidget {
  final double radiusImage;
  final double radiusBackground;
  const FirstThreeUser({
    Key? key,
    this.radiusImage = 0,
    this.radiusBackground = 0,
  }) : super(key: key);
  @override
  _FirstThreeUser createState() => _FirstThreeUser();
}

class _FirstThreeUser extends State<FirstThreeUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const Text('Ranking'),
        const Icon(
          Icons.arrow_drop_up,
          size: 10,
        ),
        UserIcon(
          radiusImage: widget.radiusImage,
          radiusBackground: widget.radiusBackground,
        ),
        const Text('Name'),
        const Text('Score'),
      ],
    );
  }
}
