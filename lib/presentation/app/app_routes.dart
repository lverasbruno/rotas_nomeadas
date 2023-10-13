import 'package:aulas_bruno/domain/entities/games/games_entity.dart';
import 'package:aulas_bruno/domain/entities/routes_params/games_routes_params.dart';
import 'package:aulas_bruno/domain/routes/named_routes.dart';
import 'package:aulas_bruno/presentation/games/games_screen.dart';
import 'package:aulas_bruno/presentation/home/home_screen.dart';
import 'package:aulas_bruno/presentation/movies/movies_screen.dart';
import 'package:flutter/cupertino.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  NamedRoutes.home.route: (BuildContext context) => const HomeScreen(),
  NamedRoutes.movies.route: (BuildContext context) => const MoviesScreen(),
  NamedRoutes.games.route: (BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    List<GameEntity> games = <GameEntity>[];

    if (arguments != null) {
      games = (arguments as GamesRoutesParams).games;
    }

    return GamesScreen(games: games);
  },
};
