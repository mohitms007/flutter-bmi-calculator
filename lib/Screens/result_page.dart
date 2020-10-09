import 'package:bmi_calculator/Components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../Components/bottomButton.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult,@required this.lines,@required this.resultText});

  final String bmiResult;
  final String resultText;
  final String lines;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Your Result',
                    style: ktitleText ,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText,style: kresultsText,),
                    Text(
                      bmiResult,
                      style: kBmiText,
                    ),
                    Text(
                     lines,
                      textAlign: TextAlign.center,
                      style:kbodyText,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonTitle: "RE-CALCULATE",
              onTap: (){

                Navigator.pop(context);
              },
            )
          ],
        )
    );
  }
}
