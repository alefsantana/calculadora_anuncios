import 'package:flutter/material.dart';

import 'home_page.dart';



class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculadora",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        hintColor: Colors.green,
        primaryColor: Colors.green,
      ),
    );
  }
}
