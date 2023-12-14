import 'package:flutter/material.dart';
import 'package:project_manager/Constants.dart';
import 'package:project_manager/Tile.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kReportsColor,
        title: Center(
          child: Text('Project manager'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.webp'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                  color: Colors.black.withOpacity(0.5),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_circle,
                          size: 40,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Good morning!',
                          style: TextStyle(
                            fontFamily: 'Courgette',
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  TileBuilder(
                    text: 'New Project',
                    color: kMainColor,
                    icon: Icons.add,
                  ),
                  TileBuilder(
                    text: 'Delete Project',
                    color: kDeleteColor,
                    icon: Icons.close,
                  ),
                ],
              ),
              TileBuilder(
                text: 'Expense Tracking',
                color: kExpenseColor,
                icon: Icons.trending_up,
              ),
              TileBuilder(
                text: 'Reports & Charts',
                color: kReportsColor,
                icon: Icons.bar_chart,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
