import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weather/Controllers/Weather.dart';
import 'package:weather/constants.dart';

class WeatherCurrentDetails extends StatelessWidget {
  const WeatherCurrentDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherController>(
      builder: (context, weather, _) => weather.didLoad ? Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 350,
        child: GridView.count(crossAxisCount: 2, childAspectRatio: 3, children: [
          DetailTile(
            label: 'SUNRISE',
            mainInfo: DateFormat("h:mma").format(DateTime.fromMillisecondsSinceEpoch(weather.currentWeather.sunrise * 1000)).toString().toLowerCase(),
          ),
          DetailTile(
            label: 'SUNSET',
            mainInfo: DateFormat("h:mma").format(DateTime.fromMillisecondsSinceEpoch(weather.currentWeather.sunset * 1000)).toString().toLowerCase(),
          ),
          DetailTile(
            label: 'CHANCE OF RAIN',
            mainInfo: '${weather.currentWeather.clouds.toString()} %',
          ),
          DetailTile(
            label: 'HUMIDITY',
            mainInfo: '${weather.currentWeather.humidity.toString()} %',
          ),
          DetailTile(
            label: 'WIND',
            mainInfo: '${ NumberFormat.compact().format(((weather.currentWeather.windSpeed * 60) * 60)).toString().split('K')[0]} km/hr',
          ),
          DetailTile(
            label: 'FEELS LIKE',
            mainInfo: '${weather.currentWeather.feelsLike.floor().toString()}°',
          ),
          DetailTile(
            label: 'PRECIPITATION',
            mainInfo: '${weather.precipitation.toString()} cm',
          ),
          DetailTile(
            label: 'PRESSURE',
            mainInfo: '${weather.currentWeather.pressure.toString()} hPa',
          ),
          DetailTile(
            label: 'VISIBILITY',
            mainInfo: '${ (weather.currentWeather.visibility / 1000).floor().toString().split('M')[0]} km/hr',
          ),
          DetailTile(
            label: 'UV INDEX',
            mainInfo: weather.currentWeather.uvi.floor().toString(),
          ),
        ]),
      ) : Container()
    );
  }
}

class DetailTile extends StatelessWidget {
  final String label;
  final String mainInfo;

  const DetailTile({Key key, this.label, this.mainInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: kOtherColor, fontSize: 16),
        ),
        Text(
          mainInfo,
          style: TextStyle(color: kPrimaryColor, fontSize: 24),
        )
      ],
    );
  }
}
