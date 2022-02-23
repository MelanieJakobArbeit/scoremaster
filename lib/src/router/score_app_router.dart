import 'package:go_router/go_router.dart';
import 'package:scoremaster/src/pages/addform/form_add_user_page.dart';
import 'package:scoremaster/src/pages/leaderboard/leader_board_page.dart';

class ScoreAppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        name: 'leaderboard',
        path: '/',
        builder: (context, state) => const LeaderBoardPage(),
      ),
      GoRoute(
        name: 'form',
        path: '/form',
        builder: (context, state) => const FormAddUserPage(),
      ),
    ],
  );
}
