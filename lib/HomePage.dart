import 'package:flutter/material.dart';
import 'package:project_manager/CreateProject.dart';
import 'package:project_manager/ReusableCard.dart';
import 'package:project_manager/Constants.dart';
import 'package:project_manager/TitleBanner.dart';
import 'package:animations/animations.dart';
import 'package:project_manager/ExpenseTracking.dart';
import 'package:project_manager/ReportsPage.dart';
import 'package:delayed_display/delayed_display.dart';

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
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: SliverAppBar(),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TitleBanner(
                  title: "Dashboard",
                ),
                Row(
                  children: [
                    Expanded(
                      child: DelayedDisplay(
                        delay: Duration(milliseconds: 200),
                        child: ReusableCard(
                          label: 'Expense Tracking',
                          icon: Icons.account_balance_wallet,
                          colour: kDarkColor,
                          iconColour: kCardColor,
                          onButtonPressed: () {
                            return ExpenseTracking(); // Replace with the actual page/widget you want to show
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: DelayedDisplay(
                        delay: Duration(milliseconds: 200),
                        child: ReusableCard(
                          label: 'Reports &\nCharts',
                          icon: Icons.bar_chart,
                          colour: kDarkColor,
                          iconColour: kCardColor,
                          onButtonPressed: () {
                            return ReportsPage(); // Replace with the actual page/widget you want to show
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TitleBanner(title: 'Projects'),
                DelayedDisplay(
                  delay: Duration(milliseconds: 200),
                  child: ReusableCard(
                    label: 'Porject 1',
                    icon: Icons.assignment,
                    colour: kDarkColor,
                    iconColour: kCardColor,
                    onButtonPressed: () {
                      return CreateProject(); // Replace with the actual page/widget you want to show
                    },
                  ),
                ),
                DelayedDisplay(
                  delay: Duration(milliseconds: 200),
                  child: ReusableCard(
                    label: 'Porject 1',
                    icon: Icons.assignment,
                    colour: kDarkColor,
                    iconColour: kCardColor,
                    onButtonPressed: () {
                      return CreateProject(); // Replace with the actual page/widget you want to show
                    },
                  ),
                ),
                DelayedDisplay(
                  delay: Duration(milliseconds: 200),
                  child: ReusableCard(
                    label: 'Porject 1',
                    icon: Icons.assignment,
                    colour: kDarkColor,
                    iconColour: kCardColor,
                    onButtonPressed: () {
                      return CreateProject(); // Replace with the actual page/widget you want to show
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
    );
  }
}

// used to create the sliver AppBar with the animation

class BackgroundWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    const minSize = 140.0;
    final p1Diff = ((minSize - size.height) * 0.5).truncate().abs();
    path.lineTo(0.0, size.height - p1Diff);

    final controlPoint = Offset(size.width * 0.4, size.height);
    final endPoint = Offset(size.width, minSize);

    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(BackgroundWaveClipper oldClipper) => oldClipper != this;
}

class SliverAppBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox(
      height: 280,
      child: ClipPath(
        clipper: BackgroundWaveClipper(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 280,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [kDarkColor, kLightColor],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  'Hey there,',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "It's a great day!",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 280;

  @override
  double get minExtent => 140;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}
