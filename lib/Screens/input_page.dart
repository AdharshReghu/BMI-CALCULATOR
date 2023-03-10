import 'package:bmicalculator/Screens/Results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Components/carddata.dart';
import '../Components/reusable_card.dart';
import '../Components/constants.dart';
import 'calculator_brain.dart';

enum GenderType { male, female }

int height = 180;
int weight = 45;
int age = 20;

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
        title: const Center(child: Text("BMI Calculator")),
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
                  const Text(
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
                      const Text(
                        "cm",
                        style: kLabeltextstyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: const Color(0xffEB1555),
                        overlayColor: const Color(0x29EB1555),
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 15.0),
                        overlayShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 30.0)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      inactiveColor: const Color(0xFF8D8E98),
                      onChanged: (double newvalue) {
                        setState(() {
                          height = newvalue.toInt();
                        });
                      },
                    ),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "WEIGHT",
                          style: kLabeltextstyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kBigNumbers,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              backgroundColor: const Color(
                                0xFF4C4F5E,
                              ),
                              child: const Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              backgroundColor: const Color(
                                0xFF4C4F5E,
                              ),
                              child: const Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    colour: kActivecardcolor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style: kLabeltextstyle,
                        ),
                        Text(
                          age.toString(),
                          style: kBigNumbers,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              backgroundColor: const Color(
                                0xFF4C4F5E,
                              ),
                              child: const Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              backgroundColor: const Color(
                                0xFF4C4F5E,
                              ),
                              child: const Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    colour: kActivecardcolor,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                            bmiResult: calc.Bmiresult(),
                            suggestions: calc.GetSuggestions(),
                            resultText: calc.getResults(),
                          )));
            },
            child: Container(
              color: kBottomcontainercolor,
              height: kBottomcontainerheght,
              width: double.infinity,
              child: Center(
                child: const Text(
                  "CALCULATE",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
