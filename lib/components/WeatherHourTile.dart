import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weather/Controllers/Weather.dart';

import 'WeatherCurrentDetails.dart';
import 'WeatherDailyTile.dart';

class WeatherHourTile extends StatelessWidget {
  const WeatherHourTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherController>(
      builder: (context, weather, _) => Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 120,
            child: ListView.builder(
              itemCount: weather.listHourlyWeather.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) => HourTile(
                currentTime: DateTime.fromMillisecondsSinceEpoch(weather.listHourlyWeather[i].currentTime * 1000),
                icon: weather.listHourlyWeather[i].weather[0].icon,
                temp: weather.listHourlyWeather[i].temp,
                clouds: weather.listHourlyWeather[i].clouds,
                i: i,
              ),
            ),
          ),
          Container(
            // height: MediaQuery.of(context).size.height * 0.50,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WeatherDailyTile(),
                  WeatherCurrentDetails(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HourTile extends StatelessWidget {
  final DateTime currentTime;
  final String icon;
  final double temp;
  final int clouds;
  final int i;

  const HourTile({Key key, @required this.currentTime, @required this.icon, @required this.temp, this.i, this.clouds}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '${i == 0 ? 'now' : DateFormat("h:mma").format(currentTime).toLowerCase()}',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          Text(
            '$clouds %',
            style: TextStyle(color: Colors.lightBlueAccent[100], fontSize: 16),
          ),
          Icon(
            FontAwesomeIcons.cloud,
            color: Colors.white,
            size: 15,
          ),
          Text('${temp.floor()}°', style: TextStyle(color: Colors.white, fontSize: 17))
        ],
      ),
    );
  }
}
