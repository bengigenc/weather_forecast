import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Prediction extends StatefulWidget {
  const Prediction({super.key});

  @override
  State<Prediction> createState() => _PredictionState();
}

class _PredictionState extends State<Prediction> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 15.h,
      width: 100.w,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/pembe.png"))),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 4.w),
            child: Image.asset("assets/images/bulut.png"),
          ),
          Container(
            margin: EdgeInsets.only( 
              left: 4.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Cuaca esok hari kemungkinan",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "akan terjadi hujan di siang hari",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                    margin: EdgeInsets.only(top: 1.h),
                    child: Text("Jangan lupa bawa payung ya")),
              ],
            ),
          )
        ],
      ),
    )
    ;
  }
}
