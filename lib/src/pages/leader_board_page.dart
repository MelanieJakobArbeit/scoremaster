import 'package:flutter/material.dart';

class LeaderBoard extends StatefulWidget {
  const LeaderBoard({Key? key}) : super(key: key);
  @override
  _LeaderBoard createState() => _LeaderBoard();
}

class _LeaderBoard extends State<LeaderBoard> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
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
          children: <Widget>[_Period(), _FirstThree(), _ScoreList()],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'add New Score',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _Period extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        Expanded(child: Text('Today', textAlign: TextAlign.center)),
        Expanded(child: Text('Week', textAlign: TextAlign.center)),
        Expanded(child: Text('Month', textAlign: TextAlign.center)),
      ],
    );
  }
}

class _FirstThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [Text('Hallo')],
    );
  }
}

class _ScoreList extends StatelessWidget {
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
