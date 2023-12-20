import 'package:flutter/material.dart';
import 'package:project_manager/Constants.dart';

class TitleBanner extends StatelessWidget {
  TitleBanner({required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kDarkColor,
            kLightColor,
          ],
          tileMode: TileMode.clamp,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: kDarkColor, // Shadow color
            blurRadius: 10.0, // Spread of the shadow
            offset: Offset(0, 3), // Offset of the shadow
          ),
        ],
      ),
      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      child: Card(
        color: kLightColor,
        shadowColor: kLightColor,
        elevation: 5.0,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: kDarkColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
