import 'package:flutter/material.dart';
import '../const.dart';
import 'package:cark/admob.dart';
import 'package:admob_flutter/admob_flutter.dart';
class Finalp extends StatefulWidget {
  Finalp({this.answerWhatt});

  String answerWhatt;

  @override
  _FinalpState createState() => _FinalpState();
}

class _FinalpState extends State<Finalp> {
  String finalanswer;

  Color finalcolour;
  AdmobInterstitial interstitial;

  @override
  void initState() {
    super.initState();
    interstitial = AdmobInterstitial(adUnitId: AdManager.interstitialId);
    interstitial.load();
  }


  @override
  Widget build(BuildContext context) {

    var bit = int.parse(widget.answerWhatt);

    if(bit == 0){
      finalcolour = Colors.green;
      finalanswer = "EVET";
    }else if(bit == 1) {
      finalcolour = Colors.red;
      finalanswer = "HAYIR";
    }else if(bit == 2) {
      finalcolour = Colors.green;
      finalanswer = "EVET";
    }else if(bit == 3) {
      finalcolour = Colors.red;
      finalanswer = "HAYIR";
    }else if(bit ==4) {
      finalcolour = Colors.yellow;
      finalanswer = "KARARSIZ";
    }else if(bit == 5) {
      finalcolour = Colors.green;
      finalanswer = "EVET";
    }else if(bit == 6) {
      finalcolour = Colors.red;
      finalanswer = "HAYIR";
    }else if(bit == 7) {
      finalcolour = Colors.green;
      finalanswer = "EVET";
    }else if(bit == 8) {
      finalcolour = Colors.red;
      finalanswer = "HAYIR";
    }else if(bit ==9) {
      finalcolour = Colors.yellow;
      finalanswer = "KARARSIZ";
    }else if(bit ==10) {
      finalcolour = Colors.yellow;
      finalanswer = "KARARSIZ";
    }

    return Container(
      color: finalcolour,
      child: FlatButton(
          child: Center(
            child: Text(
              finalanswer,
              style: kQText,
            ),
          ),
          onPressed: () async{
            if(await interstitial.isLoaded) {
              interstitial.show();
            }
            Navigator.pop(context);
          }
      ),
    );
  }
}