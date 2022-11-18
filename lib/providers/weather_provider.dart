import 'package:flutter/cupertino.dart';
import 'package:weather_forecast/modals/current_weather_resp.dart';
import 'package:weather_forecast/modals/hourly_weather_resp.dart';
import 'package:weather_forecast/service/ap%C4%B1_service.dart';

class WeatherProvider with ChangeNotifier {
  CurrentRemoveRespontsive? response = CurrentRemoveRespontsive();
  bool isLoading = true;

  get hourlyResponse => null;

  getWeatherData(context) async {
    isLoading = true;
    response = (await getCurrentData(context));
    print(response?.name);
    isLoading = false;
    notifyListeners();
  }

  HourlyWeatherResponse hresponse = HourlyWeatherResponse();
  getHWeatherData(context) async {
    isLoading = true;
    hresponse = (await getHourlyData(context))!;
    print(hresponse.toJson());
    isLoading = false;
    notifyListeners();
  }
}
