import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'female_male.dart';
import 'resuable_card.dart';
import 'result_page.dart';
import 'bottom_button.dart';
import 'calculating_BMI.dart';
const bottomcontainerheight=80.0;
const activecolour=Color(0XFF1D1E33);
const inactivecolour=Color(0XFF111328);
enum gender{ male, female}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  gender selectedgender;
  int height=180;
  int weight=10;
  int age=10;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: reusablewidget(
                onpress: (){
                  setState(() {
                    selectedgender=gender.male;
                  });
                },
                colour: selectedgender==gender.male ? activecolour : inactivecolour,
                childcard: malefemale(texts: 'MALE', icons: FontAwesomeIcons.mars,),


              ),
              ),
              Expanded(child:reusablewidget(
                onpress: (){
                  setState(() {
                    selectedgender=gender.female;
                  });
                },
                colour: selectedgender==gender.female ? activecolour : inactivecolour,
              childcard: malefemale(texts: 'FEMALE',icons: FontAwesomeIcons.venus,),
              ),
              ),

            ],
          ),
          ),
          Expanded(child: reusablewidget(colour: inactivecolour,
            childcard: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('HEIGHT'),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(height.toString(),
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                      ),

                      ),



                    Text('cm'),
                  ],
                ),
                 SliderTheme(
                   data: SliderTheme.of(context).copyWith(
                     activeTrackColor: Colors.white,
                     thumbColor: Color(0XFFEB1555),
                     overlayColor: Color(0X29EB1555),
                     inactiveTrackColor: Colors.grey,
                     thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                     overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),

                   ),
                   child: Slider(

                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,

                    onChanged: (double newvalue){
                      setState(() {
                        height= newvalue.round();
                      });
                    }

                   ),
                 ),

               ],


               ),
               ),





            ),


          Expanded(child: Row(
          children: <Widget>[
            Expanded(child:reusablewidget(colour: inactivecolour,
              childcard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('WEIGHT'),
                  Text(
                    weight.toString(),
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w900,
                    ),


                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RoundIconButton(icon: FontAwesomeIcons.minus, onpressed: (){
                        setState(() {
                          weight=weight-1;
                        });
                      }),
                      SizedBox(
                        width: 10.0,
                      ),
                      RoundIconButton(icon: FontAwesomeIcons.plus, onpressed: (){
                        setState(() {
                          weight=weight+1;
                        });
                      }),
                    ],
                  ),
                ],
              ),
            ),
            ),

            Expanded(child: reusablewidget(colour: inactivecolour,
              childcard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'AGE',
                  ),
                  Text(age.toString(),
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,

                      ) ,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RoundIconButton(icon: FontAwesomeIcons.minus, onpressed:(){
                        setState(() {
                          age=age-1;
                        });
                      }),

                      SizedBox(
                        width: 10.0,
                      ),

                      RoundIconButton(icon: FontAwesomeIcons.plus, onpressed: (){
                        setState(() {
                          age=age+1;
                        });
                      })
                    ],
                  ),
                ],
              ),
            ),
            ),

          ],

          )

          ),
          bottombutton(string: 'BMI CALCULATE' , ontap: () {

            Calculatorbmi calc =Calculatorbmi(height: height, weight: weight);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return RsultPage(bmi: calc.calculateBMI(),result: calc.result(),interpretation: calc.interpretation(),);
                },
              ),
            );
          }
    ),



    ],

    ),



    );
  }
}



class RoundIconButton extends StatelessWidget {
RoundIconButton({@required this.icon, @required this.onpressed});
    final IconData icon;
    final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onpressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0XFF4C4F5E),





    );
  }
}
