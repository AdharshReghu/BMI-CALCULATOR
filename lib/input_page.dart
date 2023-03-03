import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

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
                  child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color(0xFF1D1F33),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color(0xFF1D1F33),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Color(0xFF1D1F33),
                    borderRadius: BorderRadius.circular(10))),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color(0xFF1D1F33),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color(0xFF1D1F33),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
