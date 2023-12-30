import 'package:flutter/material.dart';
import 'package:project_manager/Constants.dart';

class ExpenseTracking extends StatefulWidget {
  @override
  State<ExpenseTracking> createState() => _ExpenseTrackingState();
}

class _ExpenseTrackingState extends State<ExpenseTracking> {
  String selectedOption = 'Income';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
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
        ],
      ),
    );
  }
}

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
