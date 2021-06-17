import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'resuable_card.dart';
import 'bottom_button.dart';

class RsultPage extends StatelessWidget {

  RsultPage({@required this.bmi , @required this.result, @required this.interpretation});
final String bmi;
final String result;
final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Expanded(child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text('your result',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),


            ),
          ),
          ),

          Expanded(
            flex: 5,
            child:reusablewidget(colour: inactivecolour,
            childcard: Column(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[

                Text(result.toUpperCase(),

                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),

                Text(bmi,

                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 80.0,
                  ),
                ),

                Text(interpretation,
                  textAlign: TextAlign.center,

                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,

                  ),
                ),




              ],
            ),
          ),
          ),
          bottombutton(string: 'RECALCULATE',
              ontap: (){
               Navigator.pop(context);
            },
          ),

        ],
      ),

    );
  }
}
