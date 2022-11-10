import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AQI extends StatefulWidget {
  const AQI({super.key});

  @override
  State<AQI> createState() => _AQIState();
}

class _AQIState extends State<AQI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.h,
      width: 100.w,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/pembe.png"))),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 8.w),
            child: Image.asset("assets/images/yuzde.png"),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 2.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "AQI - Sangat Baik",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                Text(
                  "Kualitas udara di daerahmu untuk saat ini ",
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  "sangat baik. Tidak ada pencemaran udara",
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  "yang menyebabkan berbagai penyakit.",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
