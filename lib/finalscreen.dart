import 'elemanlar/finalsayfasisecim.dart';
import 'package:flutter/material.dart';

class FinalPage extends StatelessWidget {
  FinalPage({this.answerWhat});

  final answerWhat;
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("CEVABIM NE ?"),
        centerTitle: true,
      ),
      body: Finalp(answerWhatt: answerWhat,),
    );
  }
}

