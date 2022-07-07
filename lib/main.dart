import 'package:flutter/material.dart';
import 'package:learn_lifecycle/pages/home_page.dart';
import 'package:learn_lifecycle/pages/login_page.dart';

void main() {
  runApp(const AppLifeCycle());
}

class AppLifeCycle extends StatelessWidget {
  const AppLifeCycle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
