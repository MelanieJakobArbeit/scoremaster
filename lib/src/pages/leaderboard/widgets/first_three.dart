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
            alignment: Alignment(0.2, 0.6),
            child: FirstThreeUser(),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment(-0.2, 0.6),
            child: FirstThreeUser(),
          ),
        ),
        Center(child: FirstThreeUser()),
      ],
    );
  }
}
