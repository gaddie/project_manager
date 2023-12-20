import 'package:flutter/material.dart';
import 'package:project_manager/ReusableCard.dart';
import 'package:project_manager/Constants.dart';
import 'package:project_manager/TitleBanner.dart';

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
              delegate: SliverSearchAppBar(),
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
                        child: ReusableCard(
                          icon: Icons.account_balance_wallet,
                          label: 'Expense Tracking',
                          colour: kCardColor,
                          iconColour: kDarkColor,
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          icon: Icons.bar_chart,
                          label: 'Reports & Charts',
                          colour: kDarkColor,
                          iconColour: kCardColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TitleBanner(title: 'Projects'),
                  ReusableCard(
                    icon: Icons.account_balance_wallet,
                    label: 'Expense Tracking',
                    colour: kCardColor,
                    iconColour: kDarkColor,
                  ),
                  ReusableCard(
                    icon: Icons.account_balance_wallet,
                    label: 'Expense Tracking',
                    colour: kCardColor,
                    iconColour: kDarkColor,
                  ),
                  ReusableCard(
                    icon: Icons.account_balance_wallet,
                    label: 'Expense Tracking',
                    colour: kCardColor,
                    iconColour: kDarkColor,
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kDarkColor,
          onPressed: () {},
          child: Icon(Icons.add),
        ));
  }
}

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

class SliverSearchAppBar extends SliverPersistentHeaderDelegate {
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
