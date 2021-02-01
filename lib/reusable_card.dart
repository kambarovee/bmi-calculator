import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.widgetCard});

  final Color colour;
  final Widget widgetCard;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
