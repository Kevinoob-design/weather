import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/components/WeatherCurrentDetails.dart';
import 'package:weather/components/WeatherCurrentHeader.dart';
import 'package:weather/components/WeatherDailyTile.dart';
import 'package:weather/components/WeatherHourTile.dart';

class WeatherComponent extends StatelessWidget {
  const WeatherComponent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          WeatherCurrentHeader(),
          Container(
            child: SingleChildScrollView(
              child: WeatherHourTile(),
            ),
          )
        ],
      ),
    );
  }
}
