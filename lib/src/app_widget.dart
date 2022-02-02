import 'package:flutter/material.dart';
import 'pages/leaderboard/leader_board_page.dart';
import 'app_theme.dart';

class ScoreApp extends StatelessWidget {
  const ScoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scoreboard',
      theme: AppTheme.dark,
      home: const LeaderBoard(),
    );
  }
}
