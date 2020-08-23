import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:weather/Controllers/Weather.dart';
import 'package:weather/Shared/Assets.dart';
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
      body: Stack(
        children: [
          Consumer<WeatherController>(
            builder: (context, weather, child) => weather.didLoad
                ? getWeatherBackground(weather.currentWeather.weather[0].icon)
                : SvgPicture.asset(
                    'assets/sun.svg',
                    fit: BoxFit.cover,
                  ),
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                expandedHeight: MediaQuery.of(context).size.height * 0.35,
                flexibleSpace: WeatherCurrentHeader(),
              ),
              SliverAnimatedList(
                initialItemCount: 1,
                itemBuilder: (context, index, animation) => Column(
                  children: [
                    WeatherHourTile(),
                    WeatherDailyTile(),
                    WeatherCurrentDetails(),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
