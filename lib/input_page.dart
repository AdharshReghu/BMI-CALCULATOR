import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomcontainercolor = Color(0xFFEB1555);
const activecardcolor = Color(0xFF1D1E33);
const bottomcontainerheght = 80.0;

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "MALE",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0XFF8D8E98),
                          ),
                        )
                      ],
                    ),
                    colour: activecardcolor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "FEMALE",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0XFF8D8E98),
                          ),
                        )
                      ],
                    ),
                    colour: activecardcolor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                children: const [],
              ),
              colour: activecardcolor,
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
                    colour: activecardcolor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      children: const [],
                    ),
                    colour: activecardcolor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomcontainercolor,
            height: bottomcontainerheght,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.cardChild});
  final Widget cardChild;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
    );
  }
}
