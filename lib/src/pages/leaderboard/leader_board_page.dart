import 'package:flutter/material.dart';
import 'widgets/period.dart';
import 'widgets/first_three.dart';
import 'widgets/score_list.dart';

class LeaderBoardPage extends StatefulWidget {
  const LeaderBoardPage({Key? key}) : super(key: key);
  @override
  _LeaderBoardPage createState() => _LeaderBoardPage();
}

class _LeaderBoardPage extends State<LeaderBoardPage> {
  void _addScore() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leaderboard'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
          tooltip: 'go back',
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: const <Widget>[
            Expanded(
              flex: 1,
              child: Period(),
            ),
            Expanded(
              flex: 4,
              child: FirstThree(),
            ),
            Expanded(
              flex: 8,
              child: ScoreList(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addScore,
        tooltip: 'add New Score',
        child: const Icon(Icons.add),
      ),
    );
  }
}
