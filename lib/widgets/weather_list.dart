import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WeatherList extends StatefulWidget {
  const WeatherList(
      {super.key,
      required this.resimurl,
      required this.degree,
      required this.hour, required this.index});

  final String resimurl;
  final String degree;
  final String hour;
  final int index;

  @override
  State<WeatherList> createState() => _WeatherListState();
}

class _WeatherListState extends State<WeatherList> {
  @override
  Widget build(BuildContext context) {
    return 
       Container(
        margin: EdgeInsets.only(right: 10),
        height: 120,
        width: 78,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.resimurl), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              child: Text(
                widget.degree,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff201C1C)),
              ),
            ),
            Container(
              child: Text(
                widget.hour,
                style: TextStyle(fontSize: 12, color: Color(0xff201C1C)),
              ),
            ),
          ],
        ),
      );
    
  }
}
