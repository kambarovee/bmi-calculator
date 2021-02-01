import 'package:flutter/material.dart';

const gendersTextStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8E8D98));

class GendersCard extends StatelessWidget {
  GendersCard({@required this.genderIcon, this.genderText});

  final IconData genderIcon;
  final String genderText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderText,
          style: gendersTextStyle,
        ),
      ],
    );
  }
}
