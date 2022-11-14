import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Days extends StatefulWidget {
  const Days({
    super.key,
    required this.botbannerimage,
    required this.botbannername,
    required this.botbannerdetail,
    required this.botbannerdegree,
    required this.index,
  });

  final String botbannerimage;
  final String botbannername;
  final String botbannerdetail;
  final String botbannerdegree;
  final int index;

  @override
  State<Days> createState() => _DaysState();
}

class _DaysState extends State<Days> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 1.h),
      alignment: Alignment.center,
      height: 8.h,
      width: 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffD2DFFF),
      ),
      child: Row(
        
        children: [
          Container(
            
            width: 70.w,
            child: Row(
              
              children: [
                Container(
                  padding: EdgeInsets.only(top: 1.h, left: 4.w, right: 4.w),

                  child: Image.asset(widget.botbannerimage),
                ),
                Container(
                  height: 9.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.botbannername,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(widget.botbannerdetail)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.botbannerdegree),
                Icon(Icons.arrow_right),
              ],
            ),
          )
        ],
      ),
    );
  }
}
