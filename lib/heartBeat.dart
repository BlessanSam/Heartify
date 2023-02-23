import 'package:flutter/material.dart';

class ViewHeartBeat extends StatefulWidget {
  const ViewHeartBeat({Key? key}) : super(key: key);

  @override
  State<ViewHeartBeat> createState() => _ViewHeartBeatState();
}

class _ViewHeartBeatState extends State<ViewHeartBeat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HEARTBEAT'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
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
               Text('88',style: TextStyle(fontSize: 50),)
             ],
           ),
         ),
       ),
    );
  }
}
