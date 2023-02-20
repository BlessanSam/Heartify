import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AI HEALTH'),
      ),
      body: SafeArea(
        child: Container(
          child:Center(
            child: Column(
              children: [
                SizedBox(height: 50,),
                ElevatedButton(
                  onPressed: (){},
                  child: Text('Heart Rate'),
                ),
                SizedBox(height: 5,),
                ElevatedButton(
                  onPressed: (){},
                  child: Text('Diagnose'),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
