import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../modals/current_weather_resp.dart';

class Weather_Home extends StatefulWidget {
  const Weather_Home({super.key, required this.currentRemoveRespontsive});
  final CurrentRemoveRespontsive currentRemoveRespontsive;

  @override
  State<Weather_Home> createState() => _Weather_HomeState();
}

class _Weather_HomeState extends State<Weather_Home> {
  @override
  Widget build(BuildContext context) {
    return  Container(
            padding: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
            width: 100.w,
            height: 25.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xff4F7FFA),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Serin, 20 December 2021",
                        style: TextStyle(fontSize: 17.sp, color: Colors.white)),
                    Text("3.30 PM",
                        style: TextStyle(fontSize: 14, color: Colors.white))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: (Image.asset("assets/images/yagmur.png")),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.currentRemoveRespontsive.main!.temp!.toInt().toString()+" °C",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                        Text(widget.currentRemoveRespontsive.name.toString(),
                            style: TextStyle(fontSize: 20, color: Colors.white))
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("Terakhir update 3.00 PM  ",
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                    Icon(Icons.restart_alt, color: Colors.white),
                  ],
                ),
              ],
            ),
          );
  }
}