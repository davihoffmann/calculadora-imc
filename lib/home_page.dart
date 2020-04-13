import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Calcuadora IMC"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
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
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Peso (kg)",
              labelStyle: TextStyle(color: Colors.black),
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          TextField(
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
              onPressed: () {},
              child: Text(
                "Calcular",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              color: Colors.black,
            ),
          ),
          Text(
            "Info",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ],
      ),
    );
  }
}
