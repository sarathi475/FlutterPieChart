import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class HomePage2 extends StatelessWidget {
  HomePage2({Key? key}) : super(key: key);

  final dataMap = <String, double>{
    "Flutter": 5,
    "Python": 12,
    "django": 2,
    "React": 6
  };

  final colorList = <Color>[
    Colors.greenAccent,
    Colors.red,
    Colors.yellow,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(
        title: Text("Pie Chart Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          height: 300,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: PieChart(
            dataMap: dataMap,
            chartType: ChartType.ring,
            // baseChartColor: Colors.grey[300]!,
            colorList: colorList,
            chartLegendSpacing: 43,
            ringStrokeWidth: 32,
            centerText: "Total \n20 ",
            legendOptions: LegendOptions(legendShape: BoxShape.rectangle),

            // totalValue: 20,
            chartValuesOptions: ChartValuesOptions(
                // showChartValuesInPercentage: true,
                // showChartValues: true,
                // showChartValuesOutside: true,

                // showChartValueBackground: true,
                ),
          ),
        ),
      ),
    );
  }
}
