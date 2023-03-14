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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage('https://mir-s3-cdn-cf.behance.net/project_modules/disp/89ba7387618661.5dbdbcfade1a8.gif'),opacity: 150),
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
                       if(snapshot.hasData){
                         print(snapshot.data?.snapshot.value.toString().runtimeType);
                         Map<dynamic, dynamic> map = snapshot.data?.snapshot.value as dynamic;
                         return ListTile(
                           title: Center(child: Text(map['value'].toString(), style: TextStyle(fontSize: 50.0, color: Colors.black45),)),
                         );
                       } else {
                         return CircularProgressIndicator();
                       }
                     },
                   ),
                 ],
               ),
             ),
          ),
        ),
      ),
    );
  }
}
