
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState()=> _HomePageState();
}
class _HomePageState extends State<HomePage>{
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
        child: ListView(
          children: [
            Column(
              children: [
                ElevatedButton(
                  child: Text("Continue"),
                  onPressed: (){
                    Navigator.pushNamed(context, '/second');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}