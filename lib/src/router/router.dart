import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scoremaster/src/pages/addform/add_form_page.dart';
import 'package:scoremaster/src/pages/leaderboard/leader_board_page.dart';

class Router extends StatelessWidget {
  Router({Key? key}) : super(key: key);

  static const title = 'GoRouter Example: Declarative Routes';

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        title: title,
      );

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LeaderBoardPage(),
      ),
      GoRoute(
        path: '/form',
        builder: (context, state) => const AddFormPage(),
      ),
    ],
  );
}
