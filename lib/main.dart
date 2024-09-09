import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});
  State<MyApp>createState()=>MyAppState();

  }

  class MyAppState extends State<MyApp>{
  bool status=true;
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(title: Text("Switch List Title && Switch"),),
       body: Container(
         child: Column(
           children: [
                SwitchListTile(value: status,
                title: Text("Hi"),
                activeColor: Colors.red,
                 inactiveThumbColor: Colors.blue,
                 inactiveTrackColor: Colors.pink,
                 activeTrackColor: Colors.purple,
                 onChanged: (val){
               setState(() {
                 status =val;
               });
             })
           ],
         ),
       ),
     )
   );
  }

  }

