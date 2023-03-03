import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'carddata.dart';
import 'reusable_card.dart';

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
                    cardChild: carddata(
                      gender: "MALE",
                      gendericons: FontAwesomeIcons.mars,
                    ),
                    colour: activecardcolor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: carddata(
                      gender: "FEMALE",
                      gendericons: FontAwesomeIcons.venus,
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
