import 'package:flutter/material.dart';
import 'package:project_manager/Constants.dart';

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
      body: Center(
        child: Container(
          child: Text('hello'),
        ),
      ),
    );
  }
}
