import 'package:flutter/material.dart';
import 'bodyscreen.dart';
import 'package:admob_flutter/admob_flutter.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Admob.initialize();
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: BodyScreen(),
      ),
    );
  }
}
