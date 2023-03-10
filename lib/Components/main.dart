import 'package:flutter/material.dart';
import '../Screens/input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: InputPage(),
        theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color(0xFF0A0E21),
          ),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
        ));
  }
}
