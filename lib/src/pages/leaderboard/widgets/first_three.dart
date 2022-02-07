import 'package:flutter/material.dart';
import 'first_three_user.dart';

class FirstThree extends StatefulWidget {
  const FirstThree({Key? key}) : super(key: key);
  @override
  _FirstThree createState() => _FirstThree();
}

class _FirstThree extends State<FirstThree> {
  static const double height = 300.0;
  static const double width = 500.0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: const <Widget>[
          Positioned(
            top: 50,
            left: 115,
            child: FirstThreeUser(
              radiusImage: 45,
              radiusBackground: 48,
            ),
          ),
          Positioned(
            top: 50,
            right: 115,
            child: FirstThreeUser(
              radiusImage: 45,
              radiusBackground: 48,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: FirstThreeUser(
              radiusImage: 55,
              radiusBackground: 60,
            ),
          ),
        ],
      ),
    );
  }
}
