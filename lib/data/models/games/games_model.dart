import 'package:aulas_bruno/domain/entities/games/games_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'games_model.g.dart';
part 'games_model.mapper.dart';

@JsonSerializable(anyMap: true)
class GameModel extends GameEntity {
  @JsonKey(name: 'game')
  final String nameModel;

  @JsonKey(name: 'label')
  final String descriptionModel;

  GameModel({
    required this.descriptionModel,
    required this.nameModel,
    required String id,
  }) : super(
          id: id,
          name: nameModel,
          description: descriptionModel,
        );

  factory GameModel.fromJson(Map<String, dynamic> json) => _$GameModelFromJson(json);
  Map<String, dynamic> toJson() => _$GameModelToJson(this);

  factory GameModel.fromEntity(GameEntity entity) => _$GameModelFormEntity(entity);
  GameEntity toEntity() => _$GameModelToEntity(this);
}
