import 'package:flutter/material.dart';
class reusablewidget extends StatelessWidget {
  reusablewidget({@required this.colour,this.childcard, this.onpress});
  final Color colour;
  final Widget childcard;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onpress,
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: childcard,
        decoration: BoxDecoration(
          color: colour,

          borderRadius: BorderRadius.circular(10.0),
        ),

      ),
    );
  }
}
