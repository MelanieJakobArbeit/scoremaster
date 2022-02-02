import 'package:flutter/material.dart';
import 'widgets/period_widget.dart';
import 'widgets/first_three_wedget.dart';
import 'widgets/score_list_widget.dart';

class LeaderBoard extends StatefulWidget {
  const LeaderBoard({Key? key}) : super(key: key);
  @override
  _LeaderBoard createState() => _LeaderBoard();
}

class _LeaderBoard extends State<LeaderBoard> {
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
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[Period(), FirstThree(), ScoreList()],
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
