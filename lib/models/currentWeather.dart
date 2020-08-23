import 'package:json_annotation/json_annotation.dart';
import "weatherDescription.dart";
part 'currentWeather.g.dart';

@JsonSerializable()
class CurrentWeather {
    CurrentWeather();

    @JsonKey(name: 'dt') int currentTime;
    @JsonKey(name: 'sunrise') int sunrise;
    @JsonKey(name: 'sunset') int sunset;
    @JsonKey(name: 'temp') double temp;
    @JsonKey(name: 'feels_like') double feelsLike;
    @JsonKey(name: 'pressure') int pressure;
    @JsonKey(name: 'humidity') int humidity;
    @JsonKey(name: 'dew_point') double dewPoint;
    @JsonKey(name: 'uvi') double uvi;
    @JsonKey(name: 'clouds') int clouds;
    @JsonKey(name: 'visibility') double visibility;
    @JsonKey(name: 'wind_speed') double windSpeed;
    @JsonKey(name: 'wind_deg') int windDeg;
    List<WeatherDescription> weather;
    
    factory CurrentWeather.fromJson(Map<String,dynamic> json) => _$CurrentWeatherFromJson(json);
    Map<String, dynamic> toJson() => _$CurrentWeatherToJson(this);
}
