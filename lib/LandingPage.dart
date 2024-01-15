import 'package:flutter/material.dart';
import 'package:project_manager/Constants.dart';
import 'package:animations/animations.dart';
import 'package:project_manager/CreateProject.dart';
import 'package:project_manager/CustomButton.dart';
import 'package:project_manager/ReusableContainer.dart';
import 'package:project_manager/ReusableCard.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello'),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'My Dashboard',
                  style:
                      TextStyle(fontSize: kNormalFontSize, color: kDarkColor),
                ),
              ),
              Container(
                height: 230,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 303.0,
                        child: ReusableCard(
                          label: 'Expense Tracking',
                          icon: Icons.account_balance_wallet_sharp,
                          onButtonPressed: () {
                            return CreateProject();
                          },
                        ),
                      ),
                      Container(
                        width: 303.0,
                        child: ReusableCard(
                          label: 'Expense Tracking',
                          icon: Icons.analytics,
                          onButtonPressed: () {
                            return CreateProject();
                          },
                        ),
                      ),
                      Container(
                        width: 303.0,
                        child: ReusableCard(
                          label: 'Risk Analysis',
                          icon: Icons.trending_up,
                          onButtonPressed: () {
                            return CreateProject();
                          },
                        ),
                      ),
// Add more containers or widgets as needed
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
