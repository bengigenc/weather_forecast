import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Days extends StatefulWidget {
  const Days({super.key});

  @override
  State<Days> createState() => _DaysState();
}

class _DaysState extends State<Days> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 100, left: 20),
        height: 72,
        width: 343,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffD2DFFF),
        ),
        child: Row(
          children: [
            Container(
              child: Image.asset("assets/images/days.png"),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Selasa"), Text("Hujan Petir")],
            ),
            Text("19°C"),
            Icon(Icons.arrow_right)
          ],
        ),
      ),
    );
  }
}
