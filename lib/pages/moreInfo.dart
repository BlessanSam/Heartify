import "package:flutter/material.dart";

class AnginaInfo extends StatelessWidget {
  final String account;
  const AnginaInfo({required this.account});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Angina"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text("Angina is chest pain caused by reduced blood flow to the heart muscles.\nIt's not usually life threatening, but it's a warning sign that you could be at risk of a heart attack or stroke.\nWith treatment and healthy lifestyle changes, it's possible to control angina and reduce the risk of these more serious problems.\nAngina is usually caused by the arteries supplying blood to the heart muscles becoming narrowed by a build-up of fatty substances.",style: TextStyle(fontSize: 20, color: Colors.black)),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image(
                    image: AssetImage("assets/images/angina.jpg"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text("If you have not been diagnosed with angina, get an urgent GP appointment if you have an attack of chest pain that stops within a few minutes of resting.\nIf it's well controlled, there's no reason why you cannot have a largely normal life with angina.\nYou can usually continue to do most of your normal activities.",style: TextStyle(fontSize: 20, color: Colors.black)),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
