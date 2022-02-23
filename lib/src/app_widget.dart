import 'package:flutter/material.dart';
import 'package:scoremaster/src/router/score_app_router.dart';
import 'app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Scoreboard',
      theme: AppTheme.dark,
      routerDelegate: ScoreAppRouter.router.routerDelegate,
      routeInformationParser: ScoreAppRouter.router.routeInformationParser,
    );
  }
}
