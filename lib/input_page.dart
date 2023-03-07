import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'carddata.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum GenderType { male, female }

int height = 180;

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType? selectedgender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedgender = GenderType.male;
                      });
                    },
                    child: ReusableCard(
                      cardChild: carddata(
                        gender: "MALE",
                        gendericons: FontAwesomeIcons.mars,
                      ),
                      colour: selectedgender == GenderType.male
                          ? kActivecardcolor
                          : kInactivecardcolor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedgender = GenderType.female;
                      });
                    },
                    child: ReusableCard(
                      cardChild: carddata(
                        gender: "FEMALE",
                        gendericons: FontAwesomeIcons.venus,
                      ),
                      colour: selectedgender == GenderType.female
                          ? kActivecardcolor
                          : kInactivecardcolor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: kLabeltextstyle,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: kBigNumbers,
                      ),
                      Text(
                        "cm",
                        style: kLabeltextstyle,
                      )
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 220,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newvalue) {
                      setState(() {
                        height = newvalue.toInt();
                      });
                    },
                  )
                ],
              ),
              colour: kActivecardcolor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      children: const [],
                    ),
                    colour: kActivecardcolor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      children: const [],
                    ),
                    colour: kActivecardcolor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomcontainercolor,
            height: kBottomcontainerheght,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
