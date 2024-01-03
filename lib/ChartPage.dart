import 'package:flutter/material.dart';
import 'package:project_manager/LineGraph.dart';
import 'package:project_manager/CustomButton.dart';
import 'package:project_manager/Constants.dart';
import 'package:project_manager/BarChart.dart';

class ChartsPage extends StatefulWidget {
  const ChartsPage({Key? key}) : super(key: key);

  @override
  State<ChartsPage> createState() => _ChartsPageState();
}

class _ChartsPageState extends State<ChartsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgLightColor,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BarChartSample2(),
                SizedBox(
                  height: 20,
                ),
                MyLineChart(),
                CustomButton(
                  txtColor: kLightColor,
                  bgColor: kDarkColor,
                  callBackFunction: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  label: 'Back',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
