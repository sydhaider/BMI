import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.bottomText});
  final Function onTap;
  final String bottomText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          child: Text(
            bottomText,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          color: bottomcontanercolor,
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 9),
    );
  }
}
