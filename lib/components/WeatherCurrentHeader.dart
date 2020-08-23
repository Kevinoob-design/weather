import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/Controllers/Weather.dart';

import '../constants.dart';

class WeatherCurrentHeader extends StatelessWidget {
  const WeatherCurrentHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherController>(
      builder: (context, weather, _) => weather.didLoad
          ? Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.10),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.30,
              child: Column(
                children: [
                  Text(
                    weather?.timeZone,
                    style: TextStyle(fontSize: kTitleSize, color: kPrimaryColor),
                  ),
                  Text(
                    weather?.currentWeather?.weather[0]?.description,
                    style: TextStyle(fontSize: kSubTitleSize, color: kPrimaryColor),
                  ),
                  Text(
                    '${weather?.currentWeather?.temp?.floor()?.toString()}°',
                    style: TextStyle(fontSize: kCurrentTempSize, color: kPrimaryColor, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            )
          : Container(),
    );
  }
}
