import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:healthmonitoring/loginScreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //initialize core services required for application
  await Firebase.initializeApp();//initialize firebase services in applicaation
  runApp(MyApp()); //initialize application
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Monitoring Beta',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const LoginScreen(), //
    );
  }
}

