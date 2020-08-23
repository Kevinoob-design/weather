import 'package:flutter_dotenv/flutter_dotenv.dart';

class API {
  Map<String, String> apis;

  API(double lat, double lng) {
    apis = {
      'getWeather': 'https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$lng&units=metric&appid=${DotEnv().env['OPEN_WEATHER_KEY']}',
      'postWeather': ''
    };
  }
}
