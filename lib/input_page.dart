import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_content.dart';

const bottomContainerHeight = 80.0;
const cardColorCode = Color(0xFF1D1E33);
const inactiveCardColorCode = Color(0xFF111328);
const containerColorCode = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColorCode;
  Color femaleCardColor = inactiveCardColorCode;

  //1 male 2 female
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColorCode) {
        maleCardColor = cardColorCode;
        femaleCardColor = inactiveCardColorCode;
      } else {
        maleCardColor = inactiveCardColorCode;
        femaleCardColor = cardColorCode;
      }
    } else {
      if (femaleCardColor == inactiveCardColorCode) {
        femaleCardColor = cardColorCode;
        maleCardColor = inactiveCardColorCode;
      } else {
        femaleCardColor = inactiveCardColorCode;
        maleCardColor = cardColorCode;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI calculator'),
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
                      updateColor(1);
                    });
                  },
                  child: ReusableCard(
                    colour: maleCardColor,
                    cardChild: const CardContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(2);
                    });
                  },
                  child: ReusableCard(
                    colour: femaleCardColor,
                    cardChild: const CardContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ),
            ],
          )),
          const Expanded(
            child: ReusableCard(
              colour: cardColorCode,
              cardChild: null,
            ),
          ),
          const Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: cardColorCode,
                  cardChild: CardContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: cardColorCode,
                  cardChild: CardContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ],
          )),
          Container(
            color: containerColorCode,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
