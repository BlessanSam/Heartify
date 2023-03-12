import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ViewHeartBeat extends StatefulWidget {
  final String uid;
  const ViewHeartBeat({Key? key, required this.uid}) : super(key: key);

  @override
  State<ViewHeartBeat> createState() => _ViewHeartBeatState();
}

class _ViewHeartBeatState extends State<ViewHeartBeat> {
  final database = FirebaseDatabase(databaseURL: "https://dbpde2100-default-rtdb.firebaseio.com").ref('Account');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HEARTBEAT'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('HeartBeat.gif'),opacity: 150),
        ),
         child: Center(
           child:Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Text('Your heart rate',style: TextStyle(fontSize: 30,color: Colors.black45),),
               SizedBox(height: 10,),
               StreamBuilder(
                 stream: database.child(widget.uid).child('HeartRate').onValue,
                 builder: (context,AsyncSnapshot<DatabaseEvent> snapshot){
                   print(snapshot.data?.snapshot.key.toString());
                   Map<dynamic, dynamic> map = snapshot.data?.snapshot.value as dynamic;
                   if(!snapshot.hasData){
                     return const CircularProgressIndicator();
                   } else {
                     return ListTile(
                       title: Center(child: Text(map['value'].toString(), style: TextStyle(fontSize: 50.0, color: Colors.black45),)),
                     );
                   }
                 },
               ),
             ],
           ),
         ),
      ),
    );
  }
}
