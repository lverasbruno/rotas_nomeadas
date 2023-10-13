part of 'games_model.dart';

GameModel _$GameModelFormEntity(GameEntity entity) => GameModel(
      id: entity.id,
      nameModel: entity.name,
      descriptionModel: entity.description,
    );

GameEntity _$GameModelToEntity(GameModel model) => GameEntity(
      id: model.id,
      name: model.nameModel,
      description: model.descriptionModel,
    );
