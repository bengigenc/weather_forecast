import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:weather_forecast/modals/hourly_weather_resp.dart';
import 'package:weather_forecast/pages/home_detail.dart';
import 'package:weather_forecast/providers/weather_provider.dart';
import 'package:weather_forecast/widgets/days.dart';
import 'package:weather_forecast/widgets/dropdownWidget.dart';
import 'package:weather_forecast/widgets/prediction.dart';
import 'package:weather_forecast/widgets/searchWidget.dart';
import 'package:weather_forecast/widgets/weather_home.dart';
import 'package:weather_forecast/widgets/weather_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> weatherCategory = [
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "0.00 ${"AM"}"
    },
    {
      "resim": "assets/images/rainy.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "1.00 ${"AM"}"
    },
    {
      "resim": "assets/images/night_storm.png",
      "weatherdegree": "19 ${"°C"}",
      "time": "2.00 ${"AM"}"
    },
    {
      "resim": "assets/images/cloudy.png",
      "weatherdegree": "19 ${"°C"}",
      "time": "3.00 ${"AM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "4.00 ${"AM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "5.00 ${"AM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "6.00 ${"AM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "7.00 ${"AM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "8.00 ${"AM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "9.00 ${"AM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "10.00 ${"AM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "11.00 ${"AM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "12.00 ${"AM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "1.00 ${"PM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "2.00 ${"PM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "3.00 ${"PM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "4.00 ${"PM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "5.00 ${"PM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "6.00 ${"PM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "7.00 ${"PM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "8.00 ${"PM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "9.00 ${"PM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "10.00 ${"PM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "11.00 ${"PM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "12.00 ${"PM"}"
    },
  ];

  List<Map<String, dynamic>> bottombanner = [
    {
      "bottombannerimage": "assets/images/blueStorm.png",
      "bottombannername": "Selasa",
      "bottombannerdetails": "Hujan Petir",
      "bottombannerdegree": "19 ${"°C"}"
    },
    {
      "bottombannerimage": "assets/images/blueRainy.png",
      "bottombannername": "Rabu",
      "bottombannerdetails": "Hujan Deras",
      "bottombannerdegree": "17 ${"°C"}"
    },
    {
      "bottombannerimage": "assets/images/blueRainy.png",
      "bottombannername": "Kamis",
      "bottombannerdetails": "Hujan Deras",
      "bottombannerdegree": "17 ${"°C"}"
    }
  ];
  WeatherProvider? wetProvider;
  final _key1 = GlobalKey();

  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => ShowCaseWidget.of(context).startShowCase(
        [
          _key1,
        ],
      ),
    );
    wetProvider = Provider.of<WeatherProvider>(context, listen: false);
    wetProvider!.getWeatherData(context);
    wetProvider!.getHWeatherData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          //   Consumer(
          // builder: (context, WeatherProvider aa, child) => aa.isLoading == true
          //     ? CircularProgressIndicator()
          //     :
          SingleChildScrollView(
        child: Container(
          height: 100.h,
          margin: EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 40.w,
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xff2E3A59),
                        ),
                        Showcase(
                            key: _key1,
                            description: "location",
                            child: DropDownWidget()),
                      ],
                    ),
                  ),
                  SearchWidget()
                ],
              ),
              Consumer(
                builder: (context, WeatherProvider value, child) {
                  return Center(
                    child: GestureDetector(
                      child: FadeInLeft(
                          delay: Duration(milliseconds: 2000),
                          child: value.isLoading
                              ? CircularProgressIndicator()
                              : Weather_Home(
                                  currentRemoveRespontsive:
                                      wetProvider!.response!,
                                )),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeDetail(),
                            ));
                      },
                    ),
                  );
                },
              ),
              FadeInRight(
                delay: Duration(milliseconds: 3000),
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 3.h),
                  child: Text(
                    "Ccccc",
                    // wetProvider!.response.main!.temp.toString(),
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              FadeInUp(
                delay: Duration(milliseconds: 4000),
                child: Consumer(
                  builder: (context, WeatherProvider value, child) {
                    return Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 120,
                      width: 500,
                      child: ListView.builder(
                        itemCount: value.hresponse.list!.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              value.response!.main!.temp =
                                  value.hresponse.list![index].main!.temp;
                              value.response!.weather!.first.main = value
                                  .hresponse.list![index].weather!.first.main;
                              value.notifyListeners();
                            },
                            child: WeatherList(
                                resimurl:
                                    weatherCategory[index]["resim"].toString(),
                                degree: value.hresponse.list![index].main!.temp
                                        .toInt()
                                        .toString() +
                                    " °C",
                                hour: value.hresponse.list![index].dtTxt
                                    .toString()
                                    .split(" ")
                                    .last
                                    .toString()
                                    .substring(0, 5),
                                index: index),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
              FadeInRight(
                delay: Duration(milliseconds: 5000),
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 3.h, bottom: 3.h),
                  child: Text(
                    "Harian",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              FadeInDown(
                  delay: Duration(milliseconds: 6000), child: Prediction()),
              FadeInUp(
                delay: Duration(milliseconds: 7000),
                child: Container(
                  child: SizedBox(
                    height: 200,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: bottombanner.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Days(
                          botbannerimage: bottombanner[index]
                                  ["bottombannerimage"]
                              .toString(),
                          botbannername: bottombanner[index]["bottombannername"]
                              .toString(),
                          botbannerdetail: bottombanner[index]
                                  ["bottombannerdetails"]
                              .toString(),
                          botbannerdegree: bottombanner[index]
                                  ["bottombannerdegree"]
                              .toString(),
                          index: index,
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
