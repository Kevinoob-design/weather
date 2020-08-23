import 'package:flutter/cupertino.dart';
import 'package:weather/Shared/APIs.dart';
import 'package:weather/models/currentWeather.dart';
import 'package:weather/models/dailyWeather.dart';
import 'package:weather/models/hourlyWeather.dart';
import 'package:weather/services/Http.dart';
import 'package:weather/services/Location.dart';

class WeatherController extends ChangeNotifier {
  CurrentWeather currentWeather;
  List<HourlyWeather> listHourlyWeather = [];
  List<DailyWeather> listDailyWeather = [];
  bool didLoad = false;
  String timeZone = '';
  int precipitation;

  WeatherController() {
    getWether();
  }

  void getWether() {
    Location.getCurrentPosition().then((position) {
      Http.getRequest(API(position.latitude, position.longitude).apis['getWeather'], {}).then((weatherData) {
        timeZone = weatherData['timezone'].toString().split('/')[1].replaceFirst('_', ' ');
        precipitation = weatherData['minutely'][0]['precipitation'];
        currentWeather = CurrentWeather.fromJson(weatherData['current']);

        for (var weatherDataHourly in weatherData['hourly']) {
          listHourlyWeather.add(HourlyWeather.fromJson(weatherDataHourly));
        }

        for (var weatherDataDaily in weatherData['daily']) {
          listDailyWeather.add(DailyWeather.fromJson(weatherDataDaily));
        }
        didLoad = true;
        notifyListeners();
      });
    });
  }
}
