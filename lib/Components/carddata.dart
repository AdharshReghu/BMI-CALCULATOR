import 'package:flutter/material.dart';
import 'constants.dart';

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
          style: kLabeltextstyle,
        )
      ],
    );
  }
}
