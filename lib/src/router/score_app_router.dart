import 'package:go_router/go_router.dart';
import 'package:scoremaster/src/pages/form_add_user/form_add_user_page.dart';
import 'package:scoremaster/src/pages/leaderboard/leader_board_page.dart';

final Map appRoutsList = {
  'leaderboard': '/',
  'form': '/form',
};

class ScoreAppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        name: appRoutsList.keys.first,
        path: appRoutsList.values.first,
        builder: (context, state) => const LeaderBoardPage(),
      ),
      GoRoute(
        name: appRoutsList.keys.last,
        path: appRoutsList.values.last,
        builder: (context, state) => const FormAddUserPage(),
      ),
    ],
  );
}
