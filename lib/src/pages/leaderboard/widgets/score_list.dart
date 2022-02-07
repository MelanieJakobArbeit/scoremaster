import 'package:flutter/material.dart';
import 'package:scoremaster/src/app_spacing.dart';

class ScoreList extends StatefulWidget {
  const ScoreList({Key? key}) : super(key: key);
  @override
  _ScoreList createState() => _ScoreList();
}

class _ScoreList extends State<ScoreList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppSpacing.xxl,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('1. Elisabeth'),
          Text('2. Frank'),
          Text('3. Manfred'),
          Text('4. Lina'),
          Text('5. Anneliese'),
          Text('6. Roland'),
        ],
      ),
    );
  }
}
