import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _pesoControler = TextEditingController();
  TextEditingController _alturaControler = TextEditingController();

  String _info = "Informe seus dados";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Calcuadora IMC"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _resetFields,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: _body(),
    );
  }

  _body() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Icon(
            Icons.person_outline,
            size: 120,
          ),
          TextField(
            controller: _pesoControler,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Peso (kg)",
              labelStyle: TextStyle(color: Colors.black),
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          TextField(
            controller: _alturaControler,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Altura (cm)",
              labelStyle: TextStyle(color: Colors.black),
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 50,
            child: RaisedButton(
              onPressed: _culculate,
              child: Text(
                "Calcular",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              color: Colors.black,
            ),
          ),
          Text(
            _info,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ],
      ),
    );
  }

  _resetFields() {
    _pesoControler.text = "";
    _alturaControler.text = "";
    setState(() {
      _info = "Informe seus dados";
    });
  }

  _culculate() {
    setState(() {
      double peso = double.parse(_pesoControler.text);
      double altura = double.parse(_alturaControler.text) / 100;
      double imc = peso / (altura * altura);
      print(imc);

      if (imc < 18.6) {
        _info = "Abaixo do Peso (${imc.toStringAsPrecision(3)})";
      }
      else if (imc >= 18.6 && imc < 24.9) {
        _info = "Peso Ideal (${imc.toStringAsPrecision(3)})";
      }
      else if (imc >= 24.9 && imc < 29.9) {
        _info = "Levemente Acima do Peso (${imc.toStringAsPrecision(3)})";
      }
      else if (imc >= 29.9 && imc < 34.9) {
        _info = "Obesidade Grau I (${imc.toStringAsPrecision(3)})";
      }
      else if (imc >= 34.9 && imc < 39.9) {
        _info = "Obesidade Grau II (${imc.toStringAsPrecision(3)})";
      }
      else if (imc >= 40) {
        _info = "Obesidade Grau III (${imc.toStringAsPrecision(3)})";
      }
    });
  }
}
