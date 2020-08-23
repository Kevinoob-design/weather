import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather/Controllers/Weather.dart';
import 'package:weather/screens/Weather.dart';
import 'package:provider/provider.dart';

void main() async {
  await DotEnv().load('.env');
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<WeatherController>(
          create: (_) => WeatherController(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WeatherComponent(),
      )));
}
