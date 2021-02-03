import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icons_content.dart';
import 'reusable_card.dart';

const activeCardBackgroundColor = Color(0xFF1D1E33);
const inactiveCardBackgroundColor = Color(0xFF111328);

enum Genders { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Genders selectedGender;

void updateColor(Genders gender) {}

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
                        selectedGender = Genders.male;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Genders.male
                          ? activeCardBackgroundColor
                          : inactiveCardBackgroundColor,
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
                        selectedGender = Genders.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Genders.female
                          ? activeCardBackgroundColor
                          : inactiveCardBackgroundColor,
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
                ReusableCard(colour: inactiveCardBackgroundColor),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReusableCard(colour: inactiveCardBackgroundColor),
                ReusableCard(colour: inactiveCardBackgroundColor),
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
