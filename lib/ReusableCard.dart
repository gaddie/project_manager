import 'package:flutter/material.dart';
import 'package:project_manager/Constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.label,
      required this.icon,
      required this.colour,
      required this.iconColour});

  var colour;
  var iconColour;
  var icon;
  String label;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.all(20),
        child: Container(
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
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: kDarkColor, // Shadow color
                blurRadius: 10.0, // Spread of the shadow
                offset: Offset(0, 3), // Offset of the shadow
              ),
            ],
          ),
          child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        icon,
                        size: 60,
                        color: kCardColor,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.navigate_next,
                          size: 30,
                          color: kCardColor,
                        ), // Replace with your desired expense tracking icon
                        onPressed: () {
                          print('hello');
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7),
                    child: Text(
                      label,
                      style: TextStyle(
                        fontSize: kNormalFontSize,
                        color: kCardColor,
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    ]);
  }
}
