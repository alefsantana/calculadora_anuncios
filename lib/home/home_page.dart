import 'package:calculadora_app/home/calculadora_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {


  CalculadoraWidget botao = CalculadoraWidget();

   HomePage({Key key, this.botao}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Calculadora"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 0.0),
        child: Column(
          children: <Widget>[
            CalculadoraWidget(),
          ],
        ),
      ),
    );
  }
}
