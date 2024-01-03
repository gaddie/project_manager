import 'package:flutter/material.dart';
import 'package:project_manager/Charts.dart';
import 'package:project_manager/CustomButton.dart';
import 'package:project_manager/Constants.dart';

class ChartsPage extends StatefulWidget {
  const ChartsPage({Key? key}) : super(key: key);

  @override
  State<ChartsPage> createState() => _ChartsPageState();
}

class _ChartsPageState extends State<ChartsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              SizedBox(
                height: 20,
              ),
              MyLineChart(),
              SizedBox(
                height: 20,
              ),
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
    );
  }
}
