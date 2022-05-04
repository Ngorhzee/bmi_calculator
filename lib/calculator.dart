
import 'dart:math';

class BmiResult {
  BmiResult({required this.height, required this.weight, });
  final int height;
  final int weight;

  double _result=0;
  String calculate(){
     _result=weight/pow(height/100, 2);
   return _result.toStringAsFixed(1);
    
  }
 bmiresult(){

   if (_result >= 18.5 && _result <= 24.9) {
      return 'Normal';
    } else if (_result < 18.5) {
      return 'UNDERWEIGHT';
    } else {
      return 'OVERWEIGHT';
    }
    
 }
interpretation(){
   if (_result >= 18.5 && _result <= 24.9) {
      return 'you have a Normal body weight';
    } else if (_result < 18.5) {
      return 'you have a lower than normal body weight ';
    } else {
      return 'You have a higher than normal body weight ';
    }
}  
  
}