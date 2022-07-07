import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String? text;
   HomePage({Key? key,this.text}) : super(key: key) {
    if (kDebugMode) {
      print("Worked HomePage");
    }
   }

  @override
  Widget build(BuildContext context) {
     if (kDebugMode) {
       print("worked build");
     }
    return  Scaffold(
      body: Center(
        child: Text(text!),
      ),
    );
  }
}
