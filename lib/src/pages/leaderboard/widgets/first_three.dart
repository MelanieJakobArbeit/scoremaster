import 'package:flutter/material.dart';
import 'package:scoremaster/src/models/user_with_score_model.dart';
import 'first_three_user.dart';

class FirstThree extends StatefulWidget {
  final List<UserWithScoreModel> users;
  const FirstThree({
    Key? key,
    required this.users,
  }) : super(key: key);
  @override
  _FirstThree createState() => _FirstThree();
}

class _FirstThree extends State<FirstThree> {
  static const double height = 280.0;
  static const double width = 500.0;

  static const double topPostion = 50;
  static const double centerPosition = 0;
  static const double horizontalPosition = 220;

  static const double radiusImageWinner = 55;
  static const double radiusBackgroundWinner = 60;
  static const double radiusImage = 45;
  static const double radiusBackground = 48;

  static const int numberMiddle = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: topPostion,
            left: horizontalPosition,
            child: FirstThreeUser(
              radiusImage: radiusImage,
              radiusBackground: radiusBackground,
              user: widget.users.last,
              rank: widget.users.indexOf(widget.users.last),
            ),
          ),
          Positioned(
            top: topPostion,
            right: horizontalPosition,
            child: FirstThreeUser(
              radiusImage: radiusImage,
              radiusBackground: radiusBackground,
              user: widget.users[numberMiddle],
              rank: widget.users.indexOf(widget.users[numberMiddle]),
            ),
          ),
          Positioned(
            top: centerPosition,
            left: centerPosition,
            right: centerPosition,
            child: FirstThreeUser(
              radiusImage: radiusImageWinner,
              radiusBackground: radiusBackgroundWinner,
              user: widget.users.first,
              rank: widget.users.indexOf(widget.users.first),
            ),
          ),
        ],
      ),
    );
  }
}
