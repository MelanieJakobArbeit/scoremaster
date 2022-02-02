import 'package:flutter/material.dart';

class ScoreList extends StatefulWidget {
  const ScoreList({Key? key}) : super(key: key);
  @override
  _ScoreList createState() => _ScoreList();
}

class _ScoreList extends State<ScoreList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text('1. Elisabeth'),
        Text('2. Frank'),
        Text('3. Manfred'),
        Text('4. Lina'),
        Text('5. Anneliese'),
        Text('6. Roland'),
      ],
    );
  }
}
