import 'package:flutter/material.dart';
import 'pages/leaderboard/leader_board_page.dart';
import 'app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scoreboard',
      theme: AppTheme.dark,
      home: const LeaderBoardPage(),
    );
  }
}
