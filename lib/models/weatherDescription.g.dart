// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weatherDescription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherDescription _$WeatherDescriptionFromJson(Map<String, dynamic> json) {
  return WeatherDescription()
    ..id = json['id'] as int
    ..main = json['main'] as String
    ..description = json['description'] as String
    ..icon = json['icon'] as String;
}

Map<String, dynamic> _$WeatherDescriptionToJson(WeatherDescription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon
    };
