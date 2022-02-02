import 'package:flutter/material.dart';

// TODO bitte berücksichtige alle Warnings, die Code-Richtlinien sind mit voller Absicht so konfiguriert :)
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
          tooltip: 'go back', // TODO cool!
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
        tooltip: 'add New Score', // COOL! :)
        child: const Icon(Icons.add),
      ),
    );
  }
}

// TODO pro Datei ein Widget bzw. Klasse (Ausnahme ist statefull Widget mit seinen zwei Klassen)
//  Lagere bitte die Widgets in eigene Dateien aus. Hier empfehle ich dir, einen Ordner für die Leaderboard page zu machen
//  leaderboard der enthält dann deine leader_board_page.dart sowie einen Ordner widgets welcher wiederum die Widgets enthät :)
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
