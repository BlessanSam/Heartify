import "package:flutter/material.dart";

class Angina extends StatelessWidget {
  const Angina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Angina"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("content"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("content"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
