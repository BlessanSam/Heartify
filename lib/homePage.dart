import 'package:flutter/material.dart';
import 'package:healthmonitoring/pages/diagnosis.dart';

import 'bluetooth/bluetooth.dart';
import 'heartBeat.dart';

class MyHomePage extends StatelessWidget {
  final String account;
  const MyHomePage({required this.account});

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
                              Navigator.push(context,MaterialPageRoute(builder: (context) => FlutterBlueApp(account: account,)));
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
                              Navigator.push(context,MaterialPageRoute(builder: (context) => ChestPain(account: account,)));
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
