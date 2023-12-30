import 'package:flutter/material.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI calculator'),
      ),
      body: const Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(colour: Color(0xFF1D1E33)),
              ),
              Expanded(
                child: ReusableCard(colour: Color(0xFF1D1E33)),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(colour: Color(0xFF1D1E33)),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(colour: Color(0xFF1D1E33)),
              ),
              Expanded(
                child: ReusableCard(colour: Color(0xFF1D1E33)),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
