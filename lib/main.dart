
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()async {
  {
    try{

    }
    catch(e){

    }
  }
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context)=> MylessApp(),
    },
  ));
}
class MylessApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Api App"),
       flexibleSpace: Container(
         decoration: BoxDecoration(
           gradient: LinearGradient(
             colors: [Colors.pink,Colors.green],
             begin: Alignment.bottomRight,
             end: Alignment.topLeft,
           ),
         ),
       ),
     ),
   );
  }

}