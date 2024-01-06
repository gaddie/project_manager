import 'package:flutter/material.dart';
import 'package:project_manager/Constants.dart';
import 'package:project_manager/ChartPage.dart';
import 'package:project_manager/ReportsCard.dart';
import 'package:project_manager/CustomButton.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({Key? key}) : super(key: key);

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
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
                ReportsCard(
                  financialPerfomance: '5',
                  label: 'Project Name',
                  icon: kUpArrow,
                  amountSpent: '20,000',
                  iconColour: kGreenColor,
                  onButtonPressed: () {
                    return ChartsPage();
                  },
                ),
                ReportsCard(
                  financialPerfomance: '20',
                  label: 'Project Name',
                  icon: kDownArrow,
                  amountSpent: '5,000',
                  iconColour: kRedColor,
                  onButtonPressed: () {
                    return ChartsPage();
                  },
                ),
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
