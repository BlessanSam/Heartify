import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import '../homePage.dart';

List<String> Symptoms = [];

class ChestPain extends StatelessWidget {
  final String account;
  const ChestPain({required this.account});
  //Question for chest pain
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Breath(account : account)));
                            Symptoms.add("Chest Pain");
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Breath(account: account)));
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

class Breath extends StatelessWidget {
  final String account;
  const Breath({required this.account});
  //Question for shortness for breath
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 2'),
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Discomfort(account: account)));
                            Symptoms.add("Shortness of Breath");
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Discomfort(account: account)));
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

class Discomfort extends StatelessWidget {
  final String account;
  const Discomfort({required this.account});
  //Question for Discomfort
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 3'),
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
                        Text("Are you experiencing \nany discomfort?",style: TextStyle(fontSize: 25, color: Colors.black))
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Dizziness(account: account)));
                            Symptoms.add("Discomfort");
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Dizziness(account: account)));
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

class Dizziness extends StatelessWidget {
  final String account;
  const Dizziness({required this.account});
  //Question for Dizziness
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 4'),
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
                        Text("Are you experiencing \ndizziness?",style: TextStyle(fontSize: 25, color: Colors.black))
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Fatigue(account : account)));
                            Symptoms.add("Dizziness");
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Fatigue(account : account)));
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

class Fatigue extends StatelessWidget {
  final String account;
  const Fatigue({required this.account});
  //Question for Fatigue
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 5'),
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
                        Text("Are you experiencing \nany fatigue?",style: TextStyle(fontSize: 25, color: Colors.black))
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Nausea(account: account)));
                            Symptoms.add("Fatigue");
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Nausea(account: account)));
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

class Nausea extends StatelessWidget {
  final String account;
  const Nausea({required this.account});
  //Question for
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 6'),
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
                        Text("Are you experiencing \nNausea?",style: TextStyle(fontSize: 25, color: Colors.black))
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Sweating(account: account)));
                            Symptoms.add("Nausea");
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Sweating(account: account)));
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

class Sweating extends StatelessWidget {
  final String account;
  const Sweating({required this.account});
  //Question for Sweating
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 7'),
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
                        Text("Are you experiencing \nexcessive sweating?",style: TextStyle(fontSize: 25, color: Colors.black))
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Pounding(account: account)));
                            Symptoms.add("Sweating");
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Pounding(account : account)));
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

class Pounding extends StatelessWidget {
  final String account;
  const Pounding({required this.account});
  //Question for Chest Pounding
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 8'),
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
                        Text("Are you experiencing \npounding in your chest?",style: TextStyle(fontSize: 25, color: Colors.black))
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Anxiety(account: account)));
                            Symptoms.add("Pounding");
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Anxiety(account : account)));
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

class Anxiety extends StatelessWidget {
  final String account;
  const Anxiety({required this.account});
  //Question for Anxiety
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 9'),
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
                        Text("Are you feeling \nAnxious?",style: TextStyle(fontSize: 25, color: Colors.black))
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => ColdSweat(account : account)));
                            Symptoms.add("Anxiety");
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => ColdSweat(account : account)));
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

class ColdSweat extends StatelessWidget {
  final String account;
  const ColdSweat({required this.account});
  //Question for Cold Sweat
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 10'),
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
                        Text("Are you experiencing \nCold Sweat?",style: TextStyle(fontSize: 25, color: Colors.black))
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => NoseBleed(account : account)));
                            Symptoms.add("Cold Sweat");
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => NoseBleed(account: account)));
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

class NoseBleed extends StatelessWidget {
  final String account;
  const NoseBleed({required this.account});
  //Question for Nose Bleeds
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 11'),
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
                        Text("Are you experiencing \nNose Bleeds?",style: TextStyle(fontSize: 25, color: Colors.black))
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Palpitations(account : account)));
                            Symptoms.add("Nose Bleed");
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Palpitations(account : account)));
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

class Palpitations extends StatelessWidget {
  final String account;
  const Palpitations({required this.account});
  //Question for Heart Palpitatons
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 12'),
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
                        Text("Are you experiencing \nHeart Palpitations?",style: TextStyle(fontSize: 25, color: Colors.black))
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Headache(account : account)));
                            Symptoms.add("Palpitations");
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Headache(account: account)));
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

class Headache extends StatelessWidget {
  final String account;
  const Headache({required this.account});
  //Question for Headache
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 13'),
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
                        Text("Are you experiencing \nHeadaches?",style: TextStyle(fontSize: 25, color: Colors.black))
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => BlurredVision(account: account)));
                            Symptoms.add("Headache");
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => BlurredVision(account : account)));
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

class BlurredVision extends StatelessWidget {
  final String account;
  const BlurredVision({required this.account});
  //Question for Blurred Vision
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 14'),
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
                        Text("Are you having \nBlurry Vision?",style: TextStyle(fontSize: 25, color: Colors.black))
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Weakness(account : account)));
                            Symptoms.add("Blurred Vision");
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Weakness(account: account)));
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

class Weakness extends StatelessWidget {
  final String account;
  const Weakness({required this.account});
  //Question for Weakness
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 15'),
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
                        Text("Are you experiencing \nany Weakness?",style: TextStyle(fontSize: 25, color: Colors.black))
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Vomitting(account : account)));
                            Symptoms.add("Weakness");
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Vomitting(account: account)));
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

class Vomitting extends StatelessWidget {
  final String account;
  const Vomitting({required this.account});
  //Question for Vomitting
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 16'),
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
                        Text("Have you been \nVomitting?",style: TextStyle(fontSize: 25, color: Colors.black))
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Sleepless(account: account)));
                            Symptoms.add("Vomitting");
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Sleepless(account : account)));
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

class Sleepless extends StatelessWidget {
  final String account;
  const Sleepless({required this.account});
  //Question for Sleeplessness
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 17'),
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
                        Text("Are you experiencing \nSleeplessness?",style: TextStyle(fontSize: 25, color: Colors.black))
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Result(account : account)));
                            Symptoms.add("Sleeplessness");
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Result(account: account)));
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

List<String> Angina = ["Chest Pain","Shortness of Breath","Discomfort","Dizziness","Fatigue","Nausea","Sweating"];
List<String> Heart_Attack = ["Chest Pain","Shortness of Breath","Discomfort","Dizziness","Fatigue","Nausea","Anxiety","Cold Sweat"];
List<String> Arrhythmia = ["Chest Pain","Shortness of Breath","Dizziness","Fatigue","Sweating","Pounding"];
List<String> Atrial = ["Chest Pain","Shortness of Breath","Dizziness","Fatigue","Palpitations"];
List<String> HighBP = ["Chest Pain","Shortness of Breath","Dizziness","Nose Bleed","Headache","Blurred Vision"];
List<String> LowBP = ["Chest Pain","Shortness of Breath","Dizziness","Nose Bleed","Headache","Blurred Vision","Weakness","Nausea","Vomitting","Sleeplessness"];
int count = 0;
int count1 = 0;
String diagnosis = "No previous diagnosis";



class Result extends StatelessWidget {
  final String account;
  Result({required this.account});

  void checker() {
    for (var value in Angina) {
      if (Symptoms.contains(value)) {
        count++;
      }
    }
    if (count == Angina.length) {
      diagnosis = "Angina";
      Symptoms.clear();
      count = 0;
    } else {
      count = 0;
      count1++;
    }
    for (var value in Heart_Attack) {
      if (Symptoms.contains(value)) {
        count++;
      }
    }
    if (count == Heart_Attack.length) {
      diagnosis = "Heart Attack";
      Symptoms.clear();
      count = 0;
    } else {
      count = 0;
      count1++;
    }
    for (var value in Arrhythmia) {
      if (Symptoms.contains(value)) {
        count++;
      }
    }
    if (count == Arrhythmia.length) {
      diagnosis = "Arrhythmia";
      Symptoms.clear();
      count = 0;
    } else {
      count = 0;
      count1++;
    }
    for (var value in Atrial) {
      if (Symptoms.contains(value)) {
        count++;
      }
    }
    if (count == Atrial.length) {
      diagnosis = "Atrial Fibrillation";
      Symptoms.clear();
      count = 0;
    } else {
      count = 0;
      count1++;
    }
    for (var value in HighBP) {
      if (Symptoms.contains(value)) {
        count++;
      }
    }
    if (count == HighBP.length) {
      diagnosis = "High Blood Pressure";
      Symptoms.clear();
      count = 0;
    } else {
      count = 0;
      count1++;
    }
    for (var value in LowBP) {
      if (Symptoms.contains(value)) {
        count++;
      }
    }
    if (count == LowBP.length) {
      diagnosis = "Low Blood Pressure";
      Symptoms.clear();
      count = 0;
    } else {
      count = 0;
      count1++;
    }
    if (count1 == 6) {
      diagnosis = "Please refer to a doctor";
      Symptoms.clear();
      count1 == 0;
    } else {
      count1 == 0;
    }
  }
  final database = FirebaseDatabase.instance.ref('Account');
  @override
  Widget build(BuildContext context) {
    checker();
    return Scaffold(
      appBar: AppBar(
        title: Text('Final Diagnosis'),
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
                    child:
                        Text("This is your diagnosis: \n$diagnosis",style: TextStyle(fontSize: 25, color: Colors.black))
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
                            database.child(account.toString()).update({
                              'Disease' : diagnosis.toString(),
                            });
                            Navigator.push(context,MaterialPageRoute(builder: (context) => MyHomePage(account: account)));
                          },
                          child: const Text('Return to HomePage',style: TextStyle(
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

class Previous extends StatelessWidget {
  final String account;
  String diagnosis;
  Previous({required this.account, required this.diagnosis});
  final database = FirebaseDatabase.instance.ref('Account');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Previous Diagnosis"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8,50,0,8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Your previous diagnosis was:",style: TextStyle(fontSize: 20, color: Colors.black)),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,35,0,0),
                          child: Text("$diagnosis",style: TextStyle(fontSize: 20, color: Colors.black)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 40, 0, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("More info",style: TextStyle(fontSize: 15, color: Colors.white,)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25,300,25,32),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: const Size(100,100),
                      ),
                      onPressed: (){
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Have you been cured?'),
                            // content: const Text('Congrats on being cured!'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  diagnosis = "No previous diagnosis";
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: const Text('Congratulations on being cured!'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            database.child(account).update({
                                              'Disease' : diagnosis.toString(),
                                            });
                                            Navigator.push(context,MaterialPageRoute(builder: (context) => MyHomePage(account: account)));
                                          },
                                          child: const Text('OK'),
                                        )
                                      ],
                                    ),
                                  );
                                },
                                child: const Text('Yes'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('No'),
                              ),
                            ],
                          ),
                        );
                      },
                      child: const Text('Have you\nbeen cured?',style: TextStyle(
                        fontSize:20, color: Colors.black,
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30,8,0,8),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: const Size(100,100),
                        ),
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => ChestPain(account: account)));
                        },
                        child: const Text('Rediagnose',style: TextStyle(
                          fontSize:25, color: Colors.black,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
