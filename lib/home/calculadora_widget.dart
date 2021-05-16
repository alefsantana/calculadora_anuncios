import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';



class CalculadoraWidget extends StatefulWidget {
  const CalculadoraWidget({
    Key key,
  }) : super(key: key);

  @override
  _CalculadoraWidgetState createState() => _CalculadoraWidgetState();
}

class _CalculadoraWidgetState extends State<CalculadoraWidget> {


  final realController = TextEditingController();
  final pessoasController = TextEditingController();




  double view = 30;
  double totalview;
  double clic = 0.12;
  double finalResult = 0;
  double sharing = 0.15;
  double newview = 40;
  double sequencia = 4;

  /*Funcao que Recebe o Investimento em R$ e passa o valor para Labeel
       Atingimento Máximo*/

  double _peopleChanged(String text) {
    double real = double.parse(text);

    totalview = real * view;
    finalResult = totalview * clic;
    finalResult = finalResult * sharing;
    finalResult = finalResult * newview;
    finalResult = finalResult * sequencia;
    finalResult = finalResult + totalview;

    print(finalResult);
    print(finalResult.toStringAsPrecision(6));

    pessoasController.text = (finalResult.toStringAsPrecision(8));


  }

  void _pessoasChanged(String text) {}

  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTextField("Reais", "R\$", realController, _peopleChanged, false),
        Divider(),
        buildTextField("Atingimento Máximo", "Pessoas Atingidas:",
            pessoasController, _pessoasChanged, true),
      ],
    );
  }
}

Widget buildTextField(String label, String prefix,
    TextEditingController controller, Function function, bool mexer) {
  return Form(
    child: TextField(
      readOnly: mexer,
      controller: controller,
      decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.green),
          enabledBorder: const OutlineInputBorder(
            // width: 0.0 produces a thin "hairline" border
            borderSide: const BorderSide(color: Colors.green, width: 2.0),
          ),
          border: const OutlineInputBorder(),
          prefixText: prefix),
      onChanged: function,
      keyboardType: TextInputType.number,
    ),
  );
}
