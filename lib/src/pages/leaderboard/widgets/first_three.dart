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
        Positioned.fill(
          child: Align(
            alignment: Alignment(0.2, 2),
            child: FirstThreeUser(radiusImage: 45, radiusBackground: 48),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment(-0.2, 2),
            child: FirstThreeUser(radiusImage: 45, radiusBackground: 48),
          ),
        ),
        Center(child: FirstThreeUser(radiusImage: 55, radiusBackground: 60)),
      ],
    );
  }
}
