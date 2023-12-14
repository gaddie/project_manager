import 'package:flutter/material.dart';
import 'package:project_manager/Constants.dart';

class TileBuilder extends StatelessWidget {
  var color;
  String text;
  var icon;

  TileBuilder({required this.color, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: GestureDetector(
          onTap: () {
            print('i got clicked');
          },
          child: Container(
            height: 150,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Icon(
                      icon,
                      size: 50,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: color.withOpacity(0.8),
            ),
          ),
        ),
      ),
    );
  }
}
