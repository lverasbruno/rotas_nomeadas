import 'package:aulas_bruno/domain/entities/failure/failure_entity.dart';
import 'package:aulas_bruno/domain/entities/games/games_entity.dart';
import 'package:aulas_bruno/domain/repository/games/games_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchGamesUseCase {
  final GamesRepository _repository;

  FetchGamesUseCase({required GamesRepository repository}) : _repository = repository;

  Future<Either<Failure, List<GameEntity>>> call() {
    return _repository.fetchGames();
  }
}
