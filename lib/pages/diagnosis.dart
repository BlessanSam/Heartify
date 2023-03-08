import 'package:flutter/material.dart';
import 'package:healthmonitoring/main.dart';
List<String> Symptoms = [];
class ChestPain extends StatelessWidget {
  const ChestPain({Key? key}) : super(key: key);
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Breath()));
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Breath()));
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
  const Breath({Key? key}) : super(key: key);
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Discomfort()));
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Discomfort()));
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
  const Discomfort({Key? key}) : super(key: key);
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Dizziness()));
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Dizziness()));
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
  const Dizziness({Key? key}) : super(key: key);
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Fatigue()));
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Fatigue()));
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
  const Fatigue({Key? key}) : super(key: key);
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Nausea()));
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Nausea()));
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
  const Nausea({Key? key}) : super(key: key);
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Sweating()));
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Sweating()));
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
  const Sweating({Key? key}) : super(key: key);
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Pounding()));
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Pounding()));
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
  const Pounding({Key? key}) : super(key: key);
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Anxiety()));
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Anxiety()));
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
  const Anxiety({Key? key}) : super(key: key);
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const ColdSweat()));
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const ColdSweat()));
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
  const ColdSweat({Key? key}) : super(key: key);
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const NoseBleed()));
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const NoseBleed()));
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
  const NoseBleed({Key? key}) : super(key: key);
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Palpitations()));
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Palpitations()));
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
  const Palpitations({Key? key}) : super(key: key);
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Headache()));
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Headache()));
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
  const Headache({Key? key}) : super(key: key);
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const BlurredVision()));
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const BlurredVision()));
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
  const BlurredVision({Key? key}) : super(key: key);
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Weakness()));
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Weakness()));
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
  const Weakness({Key? key}) : super(key: key);
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Vomitting()));
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Vomitting()));
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
  const Vomitting({Key? key}) : super(key: key);
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Sleepless()));
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Sleepless()));
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
  const Sleepless({Key? key}) : super(key: key);
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Result()));
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const Result()));
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
String diagnosis = "";


class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

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
    }
  }
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
                        Text("This is your diagnosis - $diagnosis",style: TextStyle(fontSize: 25, color: Colors.black))
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
                            Navigator.push(context,MaterialPageRoute(builder: (context) => MyHomePage(title: 'Health Monitor Home Page')));
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