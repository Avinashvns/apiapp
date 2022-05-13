
import 'package:apiapp/homepage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async {
  {
    try{
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
    }
    catch(e){

    }
  }
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context)=> MylessApp(),
      '/second':(context)=>HomePage(),
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
     body: SafeArea(
       child: Column(
         children: [
           ElevatedButton(
             child: Text("Continue"),
             onPressed: (){
               Navigator.pushNamed(context, '/second');
             },
           )
         ],
       ),
     ),
   );
  }

}