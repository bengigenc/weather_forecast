import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:weather_forecast/widgets/AQI.dart';

import 'package:weather_forecast/widgets/gridviewlist.dart';
import 'package:weather_forecast/widgets/homedetWeather.dart';

import '../widgets/weather_list.dart';

class HomeDetail extends StatefulWidget {
  const HomeDetail({super.key});

  @override
  State<HomeDetail> createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetail> {

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        centerTitle: true,
        backgroundColor: Color(0xff4F7FFA),
        elevation: 0,
        title: Text("Tanjungsiang, Subang", style: TextStyle(color: Colors.white),),
        actions: [Padding(
          padding:  EdgeInsets.only(right: 3.w),
          child: Icon(Icons.more_horiz_rounded, color: Colors.white,),
        )],
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeDetWeather(),
           Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 3.h, left: 15,right: 15),
                  child: Text(
                    "Cuaca Per Jam",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                 Container(
                  margin: EdgeInsets.only(top: 10, left:15, right: 15 ),
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
                 Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 3.h, left: 15,right: 15),
                  child: Text(
                    "Detail Informasi",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                AQI(),
               GridViewList(),
                
          ],
        ),
      ),
    );
  }
}