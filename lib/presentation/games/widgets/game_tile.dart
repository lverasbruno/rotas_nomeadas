import 'package:aulas_bruno/domain/entities/games/games_entity.dart';
import 'package:aulas_bruno/domain/theme/theme_constants.dart';
import 'package:flutter/material.dart';

class GameTile extends StatelessWidget {
  final GameEntity game;

  const GameTile({
    required this.game,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Titulo: '),
            const SizedBox(width: ThemeConstants.paddingXS),
            Text(game.name),
          ],
        ),
        const SizedBox(height: ThemeConstants.paddingXS),
        Row(
          children: [
            const Text('Descrição: '),
            const SizedBox(width: ThemeConstants.paddingXS),
            Text(game.description)
          ],
        )
      ],
    );
  }
}
