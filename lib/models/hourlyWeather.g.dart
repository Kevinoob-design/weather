// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourlyWeather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyWeather _$HourlyWeatherFromJson(Map<String, dynamic> json) {
  return HourlyWeather()
    ..currentTime = json['dt'] as int
    ..temp = (json['temp'] as num)?.toDouble()
    ..feelsLike = (json['feels_like'] as num)?.toDouble()
    ..pressure = json['pressure'] as int
    ..humidity = json['humidity'] as int
    ..dewPoint = (json['dew_point'] as num)?.toDouble()
    ..clouds = json['clouds'] as int
    ..visibility = (json['visibility'] as num)?.toDouble()
    ..windSpeed = (json['wind_speed'] as num)?.toDouble()
    ..windDeg = json['wind_deg'] as int
    ..weather = (json['weather'] as List)
        ?.map((e) => e == null
            ? null
            : WeatherDescription.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..pop = (json['pop'] as num)?.toDouble();
}

Map<String, dynamic> _$HourlyWeatherToJson(HourlyWeather instance) =>
    <String, dynamic>{
      'dt': instance.currentTime,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'weather': instance.weather,
      'pop': instance.pop
    };
