import 'package:flutter/material.dart';
class malefemale extends StatelessWidget {
  malefemale({@required this.texts,@required this.icons});
  final String texts;
  final IconData icons;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icons,
          size: 80.0,


        ),
        SizedBox(
          height: 15.0,
        ),

        Text(texts),

      ],





    );
  }
}
