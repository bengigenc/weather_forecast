import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:weather_forecast/pages/home_detail.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                        DropDownWidget(),
                      ],
                    ),
                  ),
                  SearchWidget()
                ],
              ),
              GestureDetector(child: FadeInLeft(child: Weather_Home()), onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeDetail(),));
              },),
              FadeInRight(
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 3.h),
                  child: Text(
                    "Cuaca Per Jam",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              FadeInUp(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 120,
                  width: 500,
                  child: ListView.builder(
                    itemCount: weatherCategory.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return WeatherList(
                          resimurl: weatherCategory[index]["resim"].toString(),
                          degree:
                              weatherCategory[index]["weatherdegree"].toString(),
                          hour: weatherCategory[index]["time"].toString(),
                          index: index);
                    },
                  ),
                ),
              ),
              FadeInRight(
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
              FadeInDown(child: Prediction()),
              FadeInUp(
                child: Container(
                  child: SizedBox(
                    height: 180,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: bottombanner.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Days(
                          botbannerimage:
                              bottombanner[index]["bottombannerimage"].toString(),
                          botbannername:
                              bottombanner[index]["bottombannername"].toString(),
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
