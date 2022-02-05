import 'package:flutter/material.dart';
import 'package:scoremaster/src/app_theme.dart';

class FirstThreeUser extends StatefulWidget {
  const FirstThreeUser({Key? key}) : super(key: key);
  @override
  _FirstThreeUser createState() => _FirstThreeUser();
}

class _FirstThreeUser extends State<FirstThreeUser> {
  double pictureHeight = 100;
  double picturewidth = 100;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const <Widget>[
        Text('Ranking'),
        Icon(
          Icons.arrow_drop_up,
          size: 10,
        ),
        CircleAvatar(
          radius: 55,
          backgroundColor: AppColors.accent,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('mock/pictures/profile-1.jpg'),
          ),
        ),
        Text('Name'),
        Text('Score'),
      ],
    );
  }
}
