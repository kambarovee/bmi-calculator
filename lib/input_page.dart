import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icons_content.dart';
import 'reusable_card.dart';

const activeCardBackgroundColor = Color(0xFF1D1E33);
const inactiveCardBackgroundColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Color maleColor = inactiveCardBackgroundColor;
Color femaleColor = inactiveCardBackgroundColor;

void updateColor(int gender) {
  if (gender == 1) {
    if (maleColor == inactiveCardBackgroundColor) {
      maleColor = activeCardBackgroundColor;
      femaleColor = inactiveCardBackgroundColor;
    } else {
      maleColor = inactiveCardBackgroundColor;
    }
  }
  if (gender == 2) {
    if (femaleColor == inactiveCardBackgroundColor) {
      femaleColor = activeCardBackgroundColor;
      maleColor = inactiveCardBackgroundColor;
    } else {
      femaleColor = inactiveCardBackgroundColor;
    }
  }
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
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
                      colour: maleColor,
                      widgetCard: GendersCard(
                        genderIcon: FontAwesomeIcons.mars,
                        genderText: 'MALE',
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
                      colour: femaleColor,
                      widgetCard: GendersCard(
                        genderIcon: FontAwesomeIcons.venus,
                        genderText: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReusableCard(colour: activeCardBackgroundColor),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReusableCard(colour: activeCardBackgroundColor),
                ReusableCard(colour: activeCardBackgroundColor),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            height: 80.0,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
