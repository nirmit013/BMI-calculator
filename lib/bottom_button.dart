import 'package:flutter/material.dart';
import 'input_page.dart';

class bottombutton extends StatelessWidget {

  bottombutton({@required this.string, @required this.ontap});
  final String string;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        ontap();
      },
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(string,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.0,

            ),
          ),
        ),
        color: Colors.pink,
        margin: EdgeInsets.only(top:10.0),
        width: double.infinity,
        height: bottomcontainerheight,

      ),
    );
  }
}
