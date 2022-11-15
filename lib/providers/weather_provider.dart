import 'package:flutter/cupertino.dart';
import 'package:weather_forecast/modals/current_weather_resp.dart';
import 'package:weather_forecast/service/ap%C4%B1_service.dart';

class WeatherProvider with ChangeNotifier {
  CurrentRemoveRespontsive response = CurrentRemoveRespontsive();
  bool isLoading = false;

  getWeatherData(context) async {
isLoading = true;
response = (await getCurrentData(context))!;
isLoading = false;
notifyListeners();

  }
  
}