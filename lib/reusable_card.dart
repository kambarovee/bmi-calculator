import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.widgetCard, this.onClickGender});

  final Color colour;
  final Widget widgetCard;
  final Function onClickGender;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClickGender();
      },
      child: Container(
        child: widgetCard,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
