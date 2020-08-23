import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weather/Controllers/Weather.dart';
import 'package:weather/Shared/Assets.dart';
import 'package:weather/models/dailyWeather.dart';

import '../constants.dart';

class WeatherDailyTile extends StatelessWidget {
  const WeatherDailyTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherController>(
      builder: (context, weather, _) => weather.didLoad ? Column(
        children: returnDaytiles(weather.listDailyWeather),
      ) : Container()
    );
  }
}

List<DayTile> returnDaytiles(List<DailyWeather> dailyWeather) {
  List<DayTile> dayTiles = [];

  for (var daily in dailyWeather) {
    dayTiles.add(DayTile(
        currentTime: DateTime.fromMillisecondsSinceEpoch(daily.currentTime * 1000),
        icon: daily.weather[0].icon,
        tempMax: daily.temp.max,
        tempMin: daily.temp.min,
        clouds: daily.clouds));
  }

  return dayTiles;
}

class DayTile extends StatelessWidget {
  final DateTime currentTime;
  final String icon;
  final double tempMax;
  final double tempMin;
  final int clouds;

  const DayTile({Key key, @required this.currentTime, @required this.icon, @required this.tempMax, this.clouds, this.tempMin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            width: 95,
            child: Text(
              '${DateFormat('EEEE').format(currentTime)}',
              style: TextStyle(color: kPrimaryColor, fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  getWeatherIcon(icon),
                  color: kPrimaryColor,
                  size: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  '$clouds %',
                  style: TextStyle(color: kSecundaryColor, fontSize: 16),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Text('${tempMax.floor()}°', style: TextStyle(color: kPrimaryColor, fontSize: 17))),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Text('${tempMin.floor()}°', style: TextStyle(color: kOtherColor, fontSize: 17)))
            ],
          )
        ],
      ),
    );
  }
}
