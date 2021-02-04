import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icons_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Genders { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Genders selectedGender;
int height = 180;

void chooseGender(Genders genders) {
  selectedGender = genders;
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
                  child: ReusableCard(
                    onClickGender: () {
                      setState(() {
                        chooseGender(Genders.male);
                      });
                    },
                    colour: selectedGender == Genders.male
                        ? kActiveCardBackgroundColor
                        : kInactiveCardBackgroundColor,
                    widgetCard: GendersCard(
                      genderIcon: FontAwesomeIcons.mars,
                      genderText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onClickGender: () {
                      setState(() {
                        chooseGender(Genders.female);
                      });
                    },
                    colour: selectedGender == Genders.female
                        ? kActiveCardBackgroundColor
                        : kInactiveCardBackgroundColor,
                    widgetCard: GendersCard(
                      genderIcon: FontAwesomeIcons.venus,
                      genderText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kInactiveCardBackgroundColor,
                    widgetCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Height',
                          style: kGendersTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kHeightNumberTextStyle,
                            ),
                            Text(
                              'cm',
                              style: kUnitTextStyle,
                            )
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Color(0xFFFFFFFF),
                            inactiveTrackColor: kInactiveButtonColor,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 16.0),
                            thumbColor: kButtonColor,
                            overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                            overlayColor: Color(0x29EB1555)
                          ),
                          child: Slider(
                              value: height.toDouble(),
                              min: 100,
                              max: 300,
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(colour: kInactiveCardBackgroundColor)),
                Expanded(
                    child: ReusableCard(colour: kInactiveCardBackgroundColor)),
              ],
            ),
          ),
          Container(
            color: kButtonColor,
            height: 80.0,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
