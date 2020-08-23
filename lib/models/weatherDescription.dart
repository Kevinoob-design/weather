import 'package:json_annotation/json_annotation.dart';

part 'weatherDescription.g.dart';

@JsonSerializable()
class WeatherDescription {
    WeatherDescription();

    @JsonKey(name: 'id') int id;
    @JsonKey(name: 'main') String main;
    @JsonKey(name: 'description') String description;
    @JsonKey(name: 'icon') String icon;
    
    factory WeatherDescription.fromJson(Map<String,dynamic> json) => _$WeatherDescriptionFromJson(json);
    Map<String, dynamic> toJson() => _$WeatherDescriptionToJson(this);
}
