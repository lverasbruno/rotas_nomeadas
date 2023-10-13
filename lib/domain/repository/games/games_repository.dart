import 'package:aulas_bruno/domain/entities/failure/failure_entity.dart';
import 'package:aulas_bruno/domain/entities/games/games_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GamesRepository {
  Future<Either<Failure, List<GameEntity>>> fetchGames();
}
