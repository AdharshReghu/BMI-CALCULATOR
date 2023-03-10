import 'package:flutter/material.dart';
import '../Components/constants.dart';
import '../Components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

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
                        "Normal",
                        style: kResultText,
                      ),
                      Text(
                        "25",
                        style: kResultValueStyle,
                      ),
                      Text(
                        "Your BMI is quite high,you should workout",
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
