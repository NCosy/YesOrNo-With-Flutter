import 'dart:math';

class AppAnswer {

  int _randomNumber;

  String answerce(){
    Random random = new Random();
    _randomNumber = random.nextInt(11);
    return _randomNumber.toString();
  }

}
