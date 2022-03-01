import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:scoremaster/src/pages/leaderboard/widgets/score_list_element.dart';

class ScoreList extends StatefulWidget {
  final LocalStorage storage;
  const ScoreList({
    Key? key,
    required this.storage,
  }) : super(key: key);
  @override
  _ScoreList createState() => _ScoreList();
}

class _ScoreList extends State<ScoreList> {
  static const int indexBalancer = 4;
  static const int numberTop = 3;

  void refresh() {
    setState(() => {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return ScoreListElement(
          userScore: widget.storage.getItem('scorelist').sublist(numberTop)[index],
          storage: widget.storage,
          rank: index + indexBalancer,
          refreshParent: refresh,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 15,
        );
      },
      itemCount: widget.storage.getItem('scorelist').sublist(numberTop).length,
    );
  }
}
