import 'package:flutter/material.dart';
import 'package:project_manager/Constants.dart';
import 'package:animations/animations.dart';
import 'package:project_manager/CreateProject.dart';
import 'package:project_manager/CustomButton.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBgLightColor,
        extendBody: true,
        floatingActionButton: OpenContainer(
          closedColor: kDarkColor,
          transitionType: ContainerTransitionType.fade,
          openBuilder: (BuildContext context, VoidCallback _) {
            return CreateProject(); // Replace with the actual page you want to show
          },
          closedElevation: 6.0,
          closedShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(56)),
          ),
          closedBuilder: (BuildContext context, VoidCallback openContainer) {
            return FloatingActionButton(
              onPressed: openContainer,
              backgroundColor: kDarkColor,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          elevation: 6.0,
          shadowColor: kDarkColor,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 60,
          color: kBottomAppColor,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(4, (index) {
              return IconButton(
                icon: Icon(
                  index == 0
                      ? Icons.home_filled
                      : index == 1
                          ? Icons.notifications
                          : index == 2
                              ? Icons.person
                              : Icons.settings,
                  color: _selectedIndex == index ? kDarkColor : kBgLightColor,
                ),
                onPressed: () {
                  setState(() {
                    _selectedIndex = index;
                    // Add logic to handle navigation or other actions
                  });
                },
              );
            }),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Text('Hello'),
              Text(
                'My Dashboard',
                style: TextStyle(fontSize: kNormalFontSize, color: kGreenColor),
              ),
            ],
          ),
        ));
  }
}

// SingleChildScrollView(
// scrollDirection: Axis.horizontal,
// child: Row(
// children: <Widget>[
// Container(
// width: 200.0,
// color: Colors.red,
// child: Center(
// child: Text('Item 1'),
// ),
// ),
// Container(
// width: 200.0,
// color: Colors.green,
// child: Center(
// child: Text('Item 2'),
// ),
// ),
// Container(
// width: 200.0,
// color: Colors.blue,
// child: Center(
// child: Text('Item 3'),
// ),
// ),
// // Add more containers or widgets as needed
// ],
// ),
// ),
