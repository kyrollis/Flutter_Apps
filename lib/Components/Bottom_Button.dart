import 'package:flutter/material.dart';
import '../Constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
        // padding: EdgeInsets.only(bottom: 10.0),
        color: kBottomContainerColor,
        child: Center(
          child: Text(
            buttonTitle,
            style: kResultButton,
          ),
        ),
      ),
    );
  }
}
