import 'package:flutter/material.dart';
import 'package:project_manager/ReusableCard.dart';
import 'package:project_manager/Constants.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kLightColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 280,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [Color(0xFFFACCCC), Color(0xFFF6EFE9)],
              )),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  'Dashboard',
                  style: TextStyle(fontSize: kTitleFontSize),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: ReusableCard(
                        icon: Icons.account_balance_wallet,
                        label: 'Expense Tracking',
                        colour: kCardColor,
                        iconColour: kDarkColor)),
                Expanded(
                    child: ReusableCard(
                        icon: Icons.bar_chart,
                        label: 'Reports & Charts',
                        colour: kDarkColor,
                        iconColour: kCardColor)),
              ],
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  'Projects',
                  style: TextStyle(fontSize: kTitleFontSize),
                ),
              ),
            ),
            ReusableCard(
                icon: Icons.account_balance_wallet,
                label: 'Expense Tracking',
                colour: kCardColor,
                iconColour: kDarkColor),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kDarkColor,
          onPressed: () {},
          child: Icon(Icons.add),
        ));
  }
}
