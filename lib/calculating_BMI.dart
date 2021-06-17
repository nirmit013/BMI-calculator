import 'dart:math';
class Calculatorbmi{
  Calculatorbmi({this.height, this.weight});

 final int height;
 final int weight;
   double _bmi;
 String calculateBMI(){
   _bmi = weight/pow(height /100, 2);
   return _bmi.toStringAsFixed(1);
 }

 String  result() {
   if (_bmi >= 25) {
     return 'over weight';
   }
   else if (_bmi > 18.5)
     return 'normal';
   else
     return 'under weight';
 }

 String interpretation(){
   if (_bmi >= 25) {
     return 'you should loss your weight';
   }
   else if (_bmi > 18.5)
     return 'you are ok ';
   else
     return 'you should increase your weight ';

 }
}