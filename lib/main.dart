import 'package:flutter/material.dart';
import 'package:healthmonitoring/heartBeat.dart';
import 'package:healthmonitoring/pages/diagnosis.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Monitoring Beta',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Health Monitor Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: const Text('AI HEALTH',),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            minimumSize: const Size(200,100),
                          ),
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const ViewHeartBeat()));
                          },
                          child: const Text('Heart Rate',style: TextStyle(
                              fontFamily: 'Pacifico', fontSize:25, color: Colors.black,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            minimumSize: const Size(200,100),
                          ),
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Question1()));
                          },
                          child: const Text(
                              'Diagnose',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize:25,
                                color: Colors.black,
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
