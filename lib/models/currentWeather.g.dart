// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currentWeather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) {
  return CurrentWeather()
    ..currentTime = json['dt'] as int
    ..sunrise = json['sunrise'] as int
    ..sunset = json['sunset'] as int
    ..temp = (json['temp'] as num)?.toDouble()
    ..feelsLike = (json['feels_like'] as num)?.toDouble()
    ..pressure = json['pressure'] as int
    ..humidity = json['humidity'] as int
    ..dewPoint = (json['dew_point'] as num)?.toDouble()
    ..uvi = (json['uvi'] as num)?.toDouble()
    ..clouds = json['clouds'] as int
    ..visibility = (json['visibility'] as num)?.toDouble()
    ..windSpeed = (json['wind_speed'] as num)?.toDouble()
    ..windDeg = json['wind_deg'] as int
    ..weather = (json['weather'] as List)
        ?.map((e) => e == null
            ? null
            : WeatherDescription.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$CurrentWeatherToJson(CurrentWeather instance) =>
    <String, dynamic>{
      'dt': instance.currentTime,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'uvi': instance.uvi,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'weather': instance.weather
    };
