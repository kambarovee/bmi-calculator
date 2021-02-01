import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icons_content.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const cardBackgroundColor = Color(0xFF1D1E33);

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
                ReusableCard(
                  colour: cardBackgroundColor,
                  widgetCard: GendersCard(
                    genderIcon: FontAwesomeIcons.mars,
                    genderText: 'MALE',
                  ),
                ),
                ReusableCard(
                  colour: cardBackgroundColor,
                  widgetCard: GendersCard(
                    genderIcon: FontAwesomeIcons.venus,
                    genderText: 'FEMALE',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReusableCard(colour: cardBackgroundColor),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReusableCard(colour: cardBackgroundColor),
                ReusableCard(colour: cardBackgroundColor),
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
