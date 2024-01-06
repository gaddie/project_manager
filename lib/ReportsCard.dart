import 'package:flutter/material.dart';
import 'package:project_manager/Constants.dart';
import 'package:animations/animations.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class ReportsCard extends StatelessWidget {
  ReportsCard({
    required this.label,
    required this.icon,
    required this.amountSpent,
    required this.iconColour,
    required this.onButtonPressed,
    required this.financialPerfomance,
  });

  final amountSpent;
  final Color iconColour;
  final IconData icon;
  final String label;
  final financialPerfomance;
  final Widget Function() onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: kLightColor,
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
                            Text(
                              label,
                              style: TextStyle(
                                fontSize: kNormalFontSize,
                                color: kDarkColor,
                              ),
                            ),
                            Row(children: [
                              Text(
                                financialPerfomance + '%',
                                style: TextStyle(color: iconColour),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                icon,
                                color: iconColour,
                              ),
                            ]),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 7),
                          child: Text(
                            'Amount Spent',
                            style: TextStyle(
                              fontSize: kNormalFontSize,
                              color: kDarkColor,
                            ),
                          ),
                        ),
                        Text(amountSpent),
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

class TrianglePainter extends CustomPainter {
  final bool isUpward;

  TrianglePainter(this.isUpward);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue // Set the color of the triangle
      ..style = PaintingStyle.fill;

    Path path = Path();

    if (isUpward) {
      path.moveTo(size.width / 2, 0);
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
    } else {
      path.moveTo(size.width / 2, size.height);
      path.lineTo(size.width, 0);
      path.lineTo(0, 0);
    }

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
