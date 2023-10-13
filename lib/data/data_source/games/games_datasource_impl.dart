import 'package:aulas_bruno/data/data_source/games/games_datasource.dart';
import 'package:aulas_bruno/data/models/games/games_model.dart';
import 'package:aulas_bruno/domain/entities/games/games_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GameDataSource)
class GameDataSourceImpl implements GameDataSource {
  @override
  Future<List<GameEntity>> fetchGames() async {
    try {
      // just to simulate a real api call
      await Future<void>.delayed(const Duration(milliseconds: 1000));
      final List<Map<String, dynamic>> games = [
        {'id': '312c984d-07be-4f0f-bcd2-90b402351281', 'label': 'Game description 01', 'game': 'Game 01'},
        {'id': '4728ac92-dcb4-4501-a26f-9790daf275db', 'label': 'Game description 02', 'game': 'Game 02'},
        {'id': '40834a6f-423f-4305-9c0c-f4225fa1ebf8', 'label': 'Game description 03', 'game': 'Game 03'},
      ];

      return games.map((Map<String, dynamic> json) => GameModel.fromJson(json).toEntity()).toList();
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<GameEntity> getGameDetails(String id) {
    // TODO: implement getGameDetails
    throw UnimplementedError();
  }
}
