import 'package:flutter/material.dart';
import 'package:project_manager/Constants.dart';
import 'package:project_manager/CustomButton.dart';
import 'package:project_manager/DropdownMenu.dart';
import 'package:project_manager/InputField.dart';
import 'package:project_manager/TextField.dart';

class ExpenseTracking extends StatefulWidget {
  @override
  State<ExpenseTracking> createState() => _ExpenseTrackingState();
}

class _ExpenseTrackingState extends State<ExpenseTracking> {
  String selectedOption = 'Income';
  String selectedDropdownValue =
      'Option 1'; // Default selected value for the dropdown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgLightColor,
      body: SafeArea(
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Add Income Or Expense',
                  style: TextStyle(fontSize: kTitleFontSize),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: IncomeSlider(
                          label: 'Income',
                          isSelected: selectedOption == 'Income',
                          onTapCallback: () {
                            setState(() {
                              selectedOption = 'Income';
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: IncomeSlider(
                          label: 'Expense',
                          isSelected: selectedOption == 'Expense',
                          onTapCallback: () {
                            setState(() {
                              selectedOption = 'Expense';
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Text(
                  'Project Name',
                  style:
                      TextStyle(color: kDarkColor, fontSize: kNormalFontSize),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: MyDropdownMenu()),
              InputField(label: 'Amount'),
              ProjectForm(),
              CustomButton(
                txtColor: kDarkColor,
                bgColor: kLightColor,
                callBackFunction: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                label: 'Add',
              ),
              CustomButton(
                txtColor: kLightColor,
                bgColor: kDarkColor,
                callBackFunction: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                label: 'Back',
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

// income and expense slider
class IncomeSlider extends StatelessWidget {
  const IncomeSlider({
    required this.isSelected,
    required this.onTapCallback,
    required this.label,
  });

  final bool isSelected;
  final VoidCallback onTapCallback;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapCallback,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isSelected ? kDarkColor : kLightColor,
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? kLightColor : kDarkColor,
            ),
          ),
        ),
      ),
    );
  }
}
