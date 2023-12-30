import 'package:flutter/material.dart';
import 'package:project_manager/Constants.dart';
import 'package:animations/animations.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    required this.label,
    required this.icon,
    required this.colour,
    required this.iconColour,
    required this.onButtonPressed,
  });

  final Color colour;
  final Color iconColour;
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
              children: [
                Container(
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
                        color: kDarkColor,
                        blurRadius: 10.0,
                        offset: Offset(0, 1),
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
                            Icon(
                              Icons.navigate_next,
                              size: 30,
                              color: kCardColor,
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
