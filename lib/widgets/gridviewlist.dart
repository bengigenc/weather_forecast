import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GridViewList extends StatefulWidget {
  const GridViewList({super.key});

  @override
  State<GridViewList> createState() => _GridViewListState();
}

class _GridViewListState extends State<GridViewList> {
  @override
  Widget build(BuildContext context) {
    return  Container(
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
                itemCount: 4,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 1,right: 1),
                  child: Container(
                    decoration: BoxDecoration(
                         color: const Color(0xffF3F3F3),
                         borderRadius: BorderRadius.circular(15)
                    ),
                   
                   
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Image.asset("assets/images/yuzde.png"),
                          SizedBox(width: 15,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              Text('86%'),
                              SizedBox(height: 5,),
                              Text('Kelembaban'),
                            ],
                          )
                        
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