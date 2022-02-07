import 'package:flutter/material.dart';
import 'first_three_user.dart';

class FirstThree extends StatefulWidget {
  const FirstThree({Key? key}) : super(key: key);
  @override
  _FirstThree createState() => _FirstThree();
}

class _FirstThree extends State<FirstThree> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const <Widget>[
        Positioned(
          top: 50,
          left: 100,
          child: FirstThreeUser(radiusImage: 45, radiusBackground: 48),
        ),
        Positioned(
          top: 50,
          right: 100,
          child: FirstThreeUser(radiusImage: 45, radiusBackground: 48),
        ),
        FirstThreeUser(radiusImage: 55, radiusBackground: 60),
      ],
    );
  }
}
