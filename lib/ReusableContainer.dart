import 'package:flutter/material.dart';
import 'package:project_manager/Constants.dart';
import 'package:animations/animations.dart';
import 'dart:ui';

class ReusableContainer extends StatelessWidget {
  ReusableContainer({
    required this.label,
    required this.icon,
    required this.onButtonPressed,
  });

  final IconData icon;
  final String label;
  final Widget Function() onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: OpenContainer(
        closedColor: kLightColor,
        transitionType: ContainerTransitionType.fade,
        openBuilder: (BuildContext context, VoidCallback _) {
          return onButtonPressed() ??
              Container(); // Return the result of onButtonPressed, or an empty container if null
        },
        closedElevation: 6.0,
        closedShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ), // Adjust the radius as needed
        ),
        closedBuilder: (BuildContext context, VoidCallback openContainer) {
          return InkWell(
            onTap: openContainer,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 80.0,
                  height: 150.0,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        kDarkColor,
                        kBottomAppColor
                      ], // Adjust colors as needed
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10.0,
                        offset: Offset(0.0, 5.0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          icon,
                          color: kLightColor,
                          size: 40.0,
                        ),
                        Text(
                          label,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: kNormalFontSize,
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: kLightColor,
                          size: 25.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
