import 'package:flutter/material.dart';

class Reusblecard extends StatelessWidget {
  Reusblecard({@required this.colur, this.cardchild,this.onPress});
  final Color colur;
  final Widget cardchild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
          child: Container(
        decoration: BoxDecoration(
          color: colur,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(15),
        child: cardchild,
      ),
    );
  }
}
