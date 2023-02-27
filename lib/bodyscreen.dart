import 'package:cark/admob.dart';
import 'package:cark/finalscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widget.dart';
import 'elemanlar/answer.dart';
import 'package:admob_flutter/admob_flutter.dart';

class BodyScreen extends StatefulWidget {
  @override
  _BodyScreenState createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  AdmobInterstitial interstitial;

  @override
  void initState() {
    super.initState();
    interstitial = AdmobInterstitial(adUnitId: AdManager.interstitialId);
    interstitial.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AdmobBanner(
        adUnitId: AdManager.bannerId,
        adSize: AdmobBannerSize.LARGE_BANNER,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Parts(
                  answer: 'EVET',
                  colour: Colors.green,
                ),
              ),
              Expanded(
                flex: 3,
                child: Button(
                  onpres: () async {
                    if (await interstitial.isLoaded) {
                      interstitial.show();
                    }
                    AppAnswer ans = AppAnswer();

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FinalPage(
                          answerWhat: ans.answerce(),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                flex: 5,
                child: Parts(
                  answer: 'HAYIR',
                  colour: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
