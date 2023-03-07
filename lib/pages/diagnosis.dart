import 'package:flutter/material.dart';

class Question1 extends StatelessWidget {
  const Question1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 1'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Row(
                    children: [
                      Text("Are you experiencing \nany chest pain?",style: TextStyle(fontSize: 25, color: Colors.black))
                    ],
                  )
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Question2()));
                          },
                          child: const Text('Yes',style: TextStyle(
                            fontSize:25, color: Colors.black,
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Question2()));
                          },
                          child: const Text('No',style: TextStyle(
                            fontSize:25, color: Colors.black,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}

class Question2 extends StatelessWidget {
  const Question2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.teal,
      ),
      body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Row(
                      children: [
                        Text("Are you experiencing \nshortness of breath?",style: TextStyle(fontSize: 25, color: Colors.black))
                      ],
                    )
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Question2()));
                          },
                          child: const Text('Yes',style: TextStyle(
                            fontSize:25, color: Colors.black,
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Question2()));
                          },
                          child: const Text('No',style: TextStyle(
                            fontSize:25, color: Colors.black,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}

