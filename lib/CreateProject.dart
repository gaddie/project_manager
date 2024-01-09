import 'package:flutter/material.dart';
import 'package:project_manager/Constants.dart';
import 'package:project_manager/InputField.dart';
import 'package:project_manager/TextField.dart';
import 'package:project_manager/CustomButton.dart';
import 'package:delayed_display/delayed_display.dart';

class CreateProject extends StatefulWidget {
  const CreateProject({Key? key}) : super(key: key);

  @override
  State<CreateProject> createState() => _CreateProjectState();
}

class _CreateProjectState extends State<CreateProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgLightColor,
      appBar: AppBar(
        backgroundColor: kBgLightColor,
        title: Text(
          'Create Project',
          style: TextStyle(color: kDarkColor),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: kDarkColor,
          ),
          onPressed: () {
            Navigator.pop(
                context); // This will pop the current page off the stack
          },
        ),
      ),
      body: ListView(children: [
        DelayedDisplay(
          delay: Duration(microseconds: 200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InputField(label: 'Project Name'),
              InputField(label: 'Start Up cost'),
              InputField(label: 'Start Date'),
              ProjectForm(),
              CustomButton(
                txtColor: kDarkColor,
                bgColor: kLightColor,
                callBackFunction: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                label: 'Create Project',
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
