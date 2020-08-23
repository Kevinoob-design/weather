import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/Controllers/Weather.dart';

class WeatherCurrentDetails extends StatelessWidget {
  const WeatherCurrentDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherController>(
      builder: (context, weather, _) => weather.didLoad
          ? Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                children: [DetailTile()],
              ),
            )
          : Container(),
    );
  }
}

class DetailTile extends StatelessWidget {
  final String label;
  final String mainInfo;

  const DetailTile({Key key, this.label, this.mainInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'label',
                style: TextStyle(color: Colors.white54, fontSize: 16),
              ),
              Text(
                'mainInfo',
                style: TextStyle(color: Colors.white, fontSize: 24),
              )
            ],
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'label',
                style: TextStyle(color: Colors.white54, fontSize: 16),
              ),
              Text(
                'mainInfo',
                style: TextStyle(color: Colors.white, fontSize: 24),
              )
            ],
          ),
        )
      ],
    );
  }
}
