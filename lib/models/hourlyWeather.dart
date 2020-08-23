import 'package:json_annotation/json_annotation.dart';
import "weatherDescription.dart";
part 'hourlyWeather.g.dart';

@JsonSerializable()
class HourlyWeather {
    HourlyWeather();

    @JsonKey(name: 'dt') int currentTime;
    @JsonKey(name: 'temp') double temp;
    @JsonKey(name: 'feels_like') double feelsLike;
    @JsonKey(name: 'pressure') int pressure;
    @JsonKey(name: 'humidity') int humidity;
    @JsonKey(name: 'dew_point') double dewPoint;
    @JsonKey(name: 'clouds') int clouds;
    @JsonKey(name: 'visibility') double visibility;
    @JsonKey(name: 'wind_speed') double windSpeed;
    @JsonKey(name: 'wind_deg') int windDeg;
    List<WeatherDescription> weather;
    @JsonKey(name: 'pop') double pop;
    
    factory HourlyWeather.fromJson(Map<String,dynamic> json) => _$HourlyWeatherFromJson(json);
    Map<String, dynamic> toJson() => _$HourlyWeatherToJson(this);
}
