import 'package:aulas_bruno/domain/entities/games/games_entity.dart';

abstract class GameDataSource {
  Future<List<GameEntity>> fetchGames();
  Future<GameEntity> getGameDetails(String id);
}
