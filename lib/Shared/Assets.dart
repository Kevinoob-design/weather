import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

IconData  getWeatherIcon(String code) {
  switch (code) {
    case "01d":
      return FontAwesomeIcons.sun;
      break;
    case "02d":
      return FontAwesomeIcons.cloudSun;
      break;
    case "03d":
      return FontAwesomeIcons.cloud;
      break;
    case "04d":
      return FontAwesomeIcons.cloudMeatball;
      break;
    case "09d":
      return FontAwesomeIcons.cloudRain;
      break;
    case "10d":
      return FontAwesomeIcons.cloudSunRain;
      break;
    case "11d":
      return FontAwesomeIcons.cloudShowersHeavy;
      break;
    case "13d":
      return FontAwesomeIcons.snowflake;
      break;
    case "50d":
      return FontAwesomeIcons.smog;
      break;
    case "01n":
      return FontAwesomeIcons.moon;
      break;
    case "02n":
      return FontAwesomeIcons.cloudMoon;
      break;
    case "03n":
      return FontAwesomeIcons.cloud;
      break;
    case "04n":
      return FontAwesomeIcons.cloudMeatball;
      break;
    case "09n":
      return FontAwesomeIcons.cloudRain;
      break;
    case "10n":
      return FontAwesomeIcons.cloudMoonRain;
      break;
    case "11n":
      return FontAwesomeIcons.cloudShowersHeavy;
      break;
    case "13n":
      return FontAwesomeIcons.snowflake;
      break;
    case "50n":
      return FontAwesomeIcons.smog;
      break;
    default:
      return FontAwesomeIcons.pooStorm;
  }
}

SvgPicture getWeatherBackground(String code) {
  switch (code) {
    case "01d":
      return SvgPicture.asset('assets/sun.svg', fit: BoxFit.cover,);
      break;
    case "02d":
      return SvgPicture.asset('assets/sun.svg', fit: BoxFit.cover,);
      break;
    case "03d":
      return SvgPicture.asset('assets/rain.svg', fit: BoxFit.cover,);
      break;
    case "04d":
      return SvgPicture.asset('assets/rain.svg', fit: BoxFit.cover,);
      break;
    case "09d":
      return SvgPicture.asset('assets/rain.svg', fit: BoxFit.cover,);
      break;
    case "10d":
      return SvgPicture.asset('assets/rain.svg', fit: BoxFit.cover,);
      break;
    case "11d":
      return SvgPicture.asset('assets/rain.svg', fit: BoxFit.cover,);
      break;
    case "13d":
      return SvgPicture.asset('assets/sun.svg', fit: BoxFit.cover,);
      break;
    case "50d":
      return SvgPicture.asset('assets/sun.svg', fit: BoxFit.cover,);
      break;
    case "01n":
      return SvgPicture.asset('assets/night.svg', fit: BoxFit.cover,);
      break;
    case "02n":
      return SvgPicture.asset('assets/night.svg', fit: BoxFit.cover,);
      break;
    case "03n":
      return SvgPicture.asset('assets/night.svg', fit: BoxFit.cover,);
      break;
    case "04n":
      return SvgPicture.asset('assets/rain.svg', fit: BoxFit.cover,);
      break;
    case "09n":
      return SvgPicture.asset('assets/rain.svg', fit: BoxFit.cover,);
      break;
    case "10n":
      return SvgPicture.asset('assets/rain.svg', fit: BoxFit.cover,);
      break;
    case "11n":
      return SvgPicture.asset('assets/rain.svg', fit: BoxFit.cover,);
      break;
    case "13n":
      return SvgPicture.asset('assets/night.svg', fit: BoxFit.cover,);
      break;
    case "50n":
      return SvgPicture.asset('assets/night.svg', fit: BoxFit.cover,);
      break;
    default:
      return SvgPicture.asset('assets/sun.svg', fit: BoxFit.cover,);
  }
}
