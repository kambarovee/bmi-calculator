import 'package:flutter/material.dart';
import 'constants.dart';
import 'result_page.dart';
import '';

class bottomButton extends StatelessWidget {
  bottomButton({@required this.bottomText, @required this.onTap});

  String bottomText;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        color: kButtonColor,
        height: 80.0,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            bottomText,
            style: kCalculateTextStyle,
          ),
        ),
      ),
    );
  }
}
