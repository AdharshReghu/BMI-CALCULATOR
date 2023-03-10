import 'package:flutter/material.dart';
import '../Components/constants.dart';
import '../Components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.suggestions});

  late String bmiResult;
  late String suggestions;
  late String resultText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Text(
                "Your Result",
                style: kTitleText,
              ),
            ),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: kActivecardcolor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText.toUpperCase(),
                        style: kResultText,
                      ),
                      Text(
                        bmiResult,
                        style: kResultValueStyle,
                      ),
                      Text(
                        suggestions,
                        style: kResultAdvice,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: kBottomcontainercolor,
                height: kBottomcontainerheght,
                width: double.infinity,
                child: Center(
                  child: const Text(
                    "RE CALCULATE",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
