import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:weather_forecast/modals/current_weather_resp.dart';

Future<CurrentRemoveRespontsive?> getCurrentData(context ) async {
  CurrentRemoveRespontsive weatherResponse;
  try{
    final response = await http.get(Uri.parse(
"https://api.openweathermap.org/data/2.5/weather?lat=41.022417&lon=29.034224&appid=623ef17ddb65ac2e8680be7c842f3911"));
      weatherResponse= CurrentRemoveRespontsive.fromJson(jsonDecode(response.body));

      return weatherResponse;
  } catch (e) {
log(e.toString());
  }
    
  }
