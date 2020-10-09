
import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onTap,this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>{
        onTap()
      },
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: KlargeButton,
          ),
        ),
        color: kbottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: kbottomContainerHeight,
      ),
    );
  }
}
