import 'package:flutter/material.dart';
import 'const.dart';

class Parts extends StatelessWidget {
  Parts({@required this.answer, @required this.colour});

  final Color colour;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colour,
      child: Center(
        child: Text(answer, style: kQText),
      ),
    );
  }
}


class Button extends StatelessWidget {
  Button({this.onpres});

  final Function onpres;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.yellow,
      child: Text('CEVAP VER',style: kAText,),
      onPressed: onpres,

    );
  }
}
