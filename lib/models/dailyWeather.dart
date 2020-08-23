import 'package:json_annotation/json_annotation.dart';
import "temp.dart";
import "feelsLike.dart";
import "weatherDescription.dart";
part 'dailyWeather.g.dart';

@JsonSerializable()
class DailyWeather {
    DailyWeather();

    @JsonKey(name: 'dt') int currentTime;
    @JsonKey(name: 'sunrise') int sunrise;
    @JsonKey(name: 'sunset') int sunset;
    Temp temp;
    FeelsLike feelsLike;
    @JsonKey(name: 'pressure') int pressure;
    @JsonKey(name: 'humidity') int humidity;
    @JsonKey(name: 'dew_point') double dewPoint;
    @JsonKey(name: 'wind_speed') double windSpeed;
    @JsonKey(name: 'wind_deg') int windDeg;
    List<WeatherDescription> weather;
    @JsonKey(name: 'clouds') int clouds;
    @JsonKey(name: 'pop') double pop;
    @JsonKey(name: 'rain') double rain;
    @JsonKey(name: 'uvi') double uvi;
    
    factory DailyWeather.fromJson(Map<String,dynamic> json) => _$DailyWeatherFromJson(json);
    Map<String, dynamic> toJson() => _$DailyWeatherToJson(this);
}
