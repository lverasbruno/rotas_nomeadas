// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameModel _$GameModelFromJson(Map json) => GameModel(
      descriptionModel: json['label'] as String,
      nameModel: json['game'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$GameModelToJson(GameModel instance) => <String, dynamic>{
      'id': instance.id,
      'game': instance.nameModel,
      'label': instance.descriptionModel,
    };
