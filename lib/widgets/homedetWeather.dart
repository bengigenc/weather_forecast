import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeDetWeather extends StatefulWidget {
  const HomeDetWeather({super.key});

  @override
  State<HomeDetWeather> createState() => _HomeDetWeatherState();
}

class _HomeDetWeatherState extends State<HomeDetWeather> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 100.w,
      color: Color(0xff4F7FFA),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Serin, 20 December 2021 - ",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "3.30 PM",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Container(
            child: Image.asset("assets/images/yagmur.png"),
          ),
          Text(
            "18°C",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Hujan Berawan",
            style: TextStyle(color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Terakhir update ",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "3.00 PM ",
                style: TextStyle(color: Colors.white),
              ),
              GestureDetector(
                child: Icon(
                  Icons.restart_alt,
                  color: Colors.white,
                ),
                onTap: () {
                  
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
