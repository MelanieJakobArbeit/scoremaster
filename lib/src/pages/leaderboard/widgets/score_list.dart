import 'package:flutter/material.dart';
import 'package:scoremaster/src/pages/leaderboard/widgets/score_list_element.dart';

class ScoreList extends StatefulWidget {
  const ScoreList({Key? key}) : super(key: key);
  @override
  _ScoreList createState() => _ScoreList();
}

class _ScoreList extends State<ScoreList> {
  int items = 10;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return const ScoreListElement();
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 15,
        );
      },
      itemCount: items,
    );
  }
}
