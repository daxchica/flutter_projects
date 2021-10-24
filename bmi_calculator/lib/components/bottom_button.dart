import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});

  final Function() onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(buttonTitle, style: kCalculatorBottonStyle)),
        color: kBottonContainerColor,
        margin: const EdgeInsets.fromLTRB(10, 05, 10, 05),
        width: double.infinity,
        height: kBottonContainerHeight,
      ),
    );
  }
}
