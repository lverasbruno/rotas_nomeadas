import 'package:aulas_bruno/data/data_source/games/games_datasource.dart';
import 'package:aulas_bruno/domain/entities/failure/failure_entity.dart';
import 'package:aulas_bruno/domain/entities/games/games_entity.dart';
import 'package:aulas_bruno/domain/repository/games/games_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GamesRepository)
class GamesRepositoryImpl implements GamesRepository {
  final GameDataSource _dataSource;

  GamesRepositoryImpl({required GameDataSource dataSource}) : _dataSource = dataSource;

  @override
  Future<Either<Failure, List<GameEntity>>> fetchGames() async {
    try {
      final List<GameEntity> games = await _dataSource.fetchGames();
      return right(games);
    } catch (error) {
      return left(GenericFailure());
    }
  }
}
