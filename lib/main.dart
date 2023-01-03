import 'package:flutter/material.dart';
import 'package:flutter_pie_chart/piechart.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pie-Chart Demo',
      showPerformanceOverlay: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff262545),
        primaryColorDark: const Color(0xff201f39),
        // brightness: Brightness.dark,
      ),
      home: HomePage2(),
    );
  }
}
