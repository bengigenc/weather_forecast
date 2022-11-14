import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:weather_forecast/pages/home_detail.dart';
import 'package:weather_forecast/pages/home_page.dart';
import 'package:weather_forecast/providers/weather_provider.dart';
import 'package:weather_forecast/widgets/days.dart';

import 'package:weather_forecast/widgets/gridviewlist.dart';
import 'package:weather_forecast/widgets/homedetWeather.dart';
import 'package:weather_forecast/widgets/prediction.dart';
import 'package:weather_forecast/widgets/weather_list.dart';

void main() {
  runApp(MultiProvider(providers: [ChangeNotifierProvider(create: (context) => WeatherProvider(),)],
  builder: (context, child) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          home: ShowCaseWidget(
            builder: Builder(
              builder: (context) => HomePage(),),
            ),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
