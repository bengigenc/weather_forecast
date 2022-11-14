import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class GridViewList extends StatefulWidget {
  const GridViewList({super.key});
  @override
  State<GridViewList> createState() => _GridViewListState();}
class _GridViewListState extends State<GridViewList> {
List<String> list1 = [
    "assets/images/yuzde.png"
        "assets/images/ic_2.png"
        "assets/images/ic_3.png"
        "assets/images/ic_4.png"];
  List<String> list2 = [
    "86%"
        "940 pHa"
        "1 km/h"
        "14%"];
  List<String> list3 = [
    "Kelembaban"
        "Tekanan Udara"
        "Kecepatan Angin"
        "Kabut"];
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50.h,
      width: 100.w,
        child:  GridView.builder(
                  padding: EdgeInsets.all(0),
                physics:  NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3,
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 12.0,
                ),
                itemCount: list1.length,
                itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 1,right: 1),
                  child: Container(
                    decoration: BoxDecoration(
                         color: const Color(0xffF3F3F3),
                         borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Image.asset(list1[index].toString()),
                          SizedBox(width: 15.w,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              Text(list2[index].toString()),
                              SizedBox(height: 5,),
                              Text(list3[index].toString(),),],)
                        ],
                      ),
                      
                    ),
                  ),
                );
                },
              ),
      )
    ;
  }
}