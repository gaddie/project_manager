import 'package:flutter/material.dart';
import 'package:project_manager/Constants.dart';
import 'package:project_manager/ChartPage.dart';
import 'ReusableCard.dart';
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
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ReusableCard(
                    label: 'Project',
                    icon: Icons.info,
                    colour: kDarkColor,
                    iconColour: kLightColor,
                    onButtonPressed: () {
                      return ChartsPage();
                    }),
                CustomButton(
                  txtColor: kDarkColor,
                  bgColor: kLightColor,
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
