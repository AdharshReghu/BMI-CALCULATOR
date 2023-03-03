import 'package:flutter/material.dart';

const TextStyle labeltextstyle = TextStyle(
  fontSize: 18,
  color: Color(0XFF8D8E98),
);

class carddata extends StatelessWidget {
  carddata({required this.gender, required this.gendericons});
  final IconData gendericons;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gendericons,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: labeltextstyle,
        )
      ],
    );
  }
}
