import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:healthmonitoring/homePage.dart';
import 'package:healthmonitoring/signup_Screen.dart';
import 'package:healthmonitoring/utils/utils.dart';
import 'package:healthmonitoring/widgets/round_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final _auth = FirebaseAuth.instance;
  bool loading = false;
  @override
  void dispose() { // once logged in the email and password will be disposed
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void login(){
    setState(() {
      loading = true;
    });
    _auth.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text.toString()).then((value){
      Utils().toastMessage(value.user!.email.toString());
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyHomePage(account : value.user!.uid.toString())));
      setState(() {
        loading = false;
      });
    }).onError((error, stackTrace){
      debugPrint(error.toString());
      Utils().toastMessage(error.toString());
    });
    setState(() {
      loading = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: ()async{
          SystemNavigator.pop();
          return true;
        },
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Center(child: Text('LOGIN')),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: 'E-Mail',
                          helperText: 'enter you emain as***@gmail.com',
                          prefixIcon: Icon(Icons.alternate_email),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Enter Email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height:20),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.lock_outline),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Enter Password';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height:45),
                      RoundButton(
                        title: 'Login',
                        loading: loading,
                        onTap: (){
                          if (_formKey.currentState!.validate()){
                            login();
                          }
                        },
                      ),
                      SizedBox(height:15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Dont have an account"),
                          TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                            },
                            child: Text('SignUP'),
                          ),
                        ],
                      ),
                      SizedBox(height:5),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}