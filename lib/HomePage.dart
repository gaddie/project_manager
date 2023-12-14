import 'package:flutter/material.dart';
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
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://www.shutterstock.com/image-photo/construction-planning-drawings-on-black-600nw-539172220.jpg'),
              fit: BoxFit.cover, // Adjust the BoxFit based on your requirements
            ),
          ),
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
                        Text('Good morning')
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 150,
                          child: Center(
                            child: Text('Create New Project'),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: kMainColor.withOpacity(0.8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 150,
                          child: Center(
                            child: Text('Delete Project'),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: kDeleteColor.withOpacity(0.8),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
