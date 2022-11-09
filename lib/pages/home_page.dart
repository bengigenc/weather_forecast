import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:weather_forecast/widgets/prediction.dart';
import 'package:weather_forecast/widgets/weather_home.dart';
import 'package:weather_forecast/widgets/weather_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Initial Selected Value
  String dropdownvalue = 'Konya';

// List of items in our dropdown menu
  var items = [
    'Konya',
    'Karaman',
    'Çekmeköy',
    "Ramazan'ın evi",
    'Kırıkkale',
  ];

  List<Map<String, dynamic>> weatherCategory = [
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "0.00 ${"AM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "1.00 ${"AM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
      "time": "2.00 ${"AM"}"
    },
    {
      "resim": "assets/images/yagmur.png",
      "weatherdegree": "20 ${"°C"}",
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
                      Container(
                        margin: EdgeInsets.only(left: 0.5.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DropdownButton(
                              // Initial Value
                              value: dropdownvalue,
        
                              // Down Arrow Icon
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Color(0xff2E3A59),
                              ),
        
                              // Array list of items
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 7.w),
                  width: 45.w,
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        suffixIcon: Container(
                          padding: EdgeInsets.all(15),
                          child: Icon(Icons.search),
                          width: 18,
                        )),
                  ),
                ),
              ],
            ),
            Weather_Home(),
            Container(
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
            Container(
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
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 3.h),
              child: Text(
                "Harian",
                style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              
            ),
            Prediction(),
          ],
              ),
            ),
        ));
  }
}
