import 'package:flutter/material.dart';
import 'package:project_manager/Constants.dart';
import 'package:project_manager/InputField.dart';
import 'package:project_manager/TextField.dart';

class CreateProject extends StatefulWidget {
  const CreateProject({Key? key}) : super(key: key);

  @override
  State<CreateProject> createState() => _CreateProjectState();
}

class _CreateProjectState extends State<CreateProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkColor,
      appBar: AppBar(
        backgroundColor: kDarkColor,
        title: Text(
          'Create Project',
          style: TextStyle(color: kLightColor),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: kLightColor,
          ),
          onPressed: () {
            Navigator.pop(
                context); // This will pop the current page off the stack
          },
        ),
      ),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InputField(label: 'Project Name'),
            InputField(label: 'Start Up cost'),
            InputField(label: 'Start Date'),
            ProjectForm(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kLightColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 17),
                  child: Text(
                    'Create Project',
                    style: TextStyle(color: kDarkColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
