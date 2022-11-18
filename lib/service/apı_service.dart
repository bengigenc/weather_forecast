import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:weather_forecast/modals/current_weather_resp.dart';
import 'package:weather_forecast/modals/hourly_weather_resp.dart';
import 'package:weather_forecast/service/logging.dart';

final Dio _dio = Dio(BaseOptions(
  baseUrl: "https://api.openweathermap.org/data/2.5/",
  connectTimeout: 5000,
  receiveTimeout: 3000,
))
  ..interceptors.add(Logging());

Future<CurrentRemoveRespontsive?> getCurrentData(context) async {
  CurrentRemoveRespontsive weatherResponse;
  try {
    final response = await _dio.get(
        "weather?lat=44.34&lon=10.99&appid=ca76f2c0423e08ef8e032a11479e5a2d&units=metric");

//      final response = await http.get(Uri.parse(
// "https://api.openweathermap.org/data/2.5/weather?lat=41.022417&lon=29.034224&appid=623ef17ddb65ac2e8680be7c842f3911&lang=tr&units=metric"));
    weatherResponse = CurrentRemoveRespontsive.fromJson(response.data);

    return weatherResponse;
  } catch (e) {
    log(e.toString());
  }
}

Future<HourlyWeatherResponse?> getHourlyData(context) async {
  HourlyWeatherResponse weatherResponse;
  try {
//     final response = await http.get(Uri.parse(
// "https://api.openweathermap.org/data/2.5/forecast?lat=44.34&lon=10.99&appid=ca76f2c0423e08ef8e032a11479e5a2d&units=metric"));
//       weatherResponse= HourlyWeatherResponse.fromJson(jsonDecode(response.body));

    final response = await _dio.get(
        "forecast?lat=44.34&lon=10.99&appid=ca76f2c0423e08ef8e032a11479e5a2d&units=metric");
    weatherResponse = HourlyWeatherResponse.fromJson(response.data);
    print("${weatherResponse.city!.name}");

    return weatherResponse;
  } catch (e) {
    log(e.toString());
  }
}
