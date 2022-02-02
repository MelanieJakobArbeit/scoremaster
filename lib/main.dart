import 'package:flutter/material.dart';
import 'src/pages/leader_board_page.dart';
import 'src/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scoreboard',
      theme: AppTheme.dark,
      home: const LeaderBoard(),
    );
  }
}
