import 'package:aulas_bruno/domain/entities/games/games_entity.dart';
import 'package:aulas_bruno/domain/entities/routes_params/games_routes_params.dart';
import 'package:aulas_bruno/domain/routes/named_routes.dart';
import 'package:aulas_bruno/domain/theme/theme_constants.dart';
import 'package:aulas_bruno/presentation/common/buttons/action_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: ThemeConstants.paddingL,
            horizontal: ThemeConstants.paddingS,
          ),
          child: Center(
              child: Column(
            children: [
              const Text('Home'),
              const SizedBox(height: ThemeConstants.paddingS),
              ActionButton(
                icon: Icons.movie,
                label: 'Filmes',
                onTap: () => _navigateToMovies(context),
              ),
              const SizedBox(height: ThemeConstants.paddingS),
              ActionButton(
                icon: Icons.games,
                label: 'Games',
                onTap: () => _navigateToGames(context),
              ),
              const SizedBox(height: ThemeConstants.paddingS),
              ActionButton(
                icon: Icons.games_outlined,
                label: 'Games 2',
                onTap: () => _navigateToEraseGames(context),
              ),
            ],
          )),
        ),
      ),
    );
  }

  void _navigateToMovies(BuildContext context) {
    Navigator.of(context).pushNamed(NamedRoutes.movies.route);
  }

  void _navigateToGames(BuildContext context) {
    final List<GameEntity> games = [
      GameEntity(id: 'asd', description: 'description 01', name: 'name 01'),
      GameEntity(id: 'qwe', description: 'description 02', name: 'name 02'),
      GameEntity(id: 'zxc', description: 'description 03', name: 'name 03'),
    ];

    Navigator.of(context).pushNamed(NamedRoutes.games.route, arguments: GamesRoutesParams(games: games));
  }

  _navigateToEraseGames(BuildContext context) {
    Navigator.of(context).pushNamed(NamedRoutes.games.route);
  }
}
