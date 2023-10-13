import 'package:aulas_bruno/domain/entities/games/games_entity.dart';
import 'package:aulas_bruno/domain/theme/theme_constants.dart';
import 'package:aulas_bruno/presentation/games/widgets/game_list_empty.dart';
import 'package:aulas_bruno/presentation/games/widgets/game_tile.dart';
import 'package:flutter/material.dart';

class GamesScreen extends StatelessWidget {
  final List<GameEntity> games;

  const GamesScreen({
    required this.games,
    super.key,
  });

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
            child: games.isEmpty
                ? const GameListEmpty()
                : ListView(
                    children: games
                        .map(
                          (GameEntity game) => Padding(
                            padding: const EdgeInsets.only(bottom: ThemeConstants.padding),
                            child: GameTile(
                              game: game,
                            ),
                          ),
                        )
                        .toList(),
                  ),
          ),
        ),
      ),
    );
  }
}
