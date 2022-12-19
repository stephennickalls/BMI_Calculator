import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({this.colour, this.cardChild, this.customAction});
  final Color colour;
  final Widget cardChild;
  final Function customAction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: customAction,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        width: 160.00,
        height: 200.0,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
