
import 'package:apiapp/getapi.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  final TextEditingController _controller1=TextEditingController(text:"");
  final TextEditingController _controller2=TextEditingController(text:"");
  final TextEditingController _controller3=TextEditingController(text:"");

  void controlling(){
    String firstname=_controller1.text;
    String lastname=_controller2.text;
    String city=_controller3.text;
}
  String flexs = "";
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
                Text("First Name"),
                TextField(
                  controller: widget._controller1,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your first name',
                    hintStyle: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  onChanged: (text) {
                    widget.flexs = text;
                    setState(() {});
                  },
                ),
                SizedBox(height: 20,),
                Text("last Name"),
                TextField(
                  controller: widget._controller2,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your last name',
                    hintStyle: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  onChanged: (text) {
                    widget.flexs = text;
                    setState(() {});
                  },
                ),
                SizedBox(height: 20,),
                Text("City"),
                TextField(
                  controller: widget._controller3,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your City name',
                    hintStyle: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  onChanged: (text) {
                    widget.flexs = text;
                    setState(() {});
                  },
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  child: Text("Get Api"),
                  onPressed: ()async{

                    String firstname=widget._controller1.text;
                    String lastname=widget._controller2.text;
                    String city=widget._controller3.text;

                    String link="/api/ram";

                    Map<String,dynamic>m=Map();
                    m.putIfAbsent("firstname", () => firstname);
                    m.putIfAbsent("lastname", () => lastname);
                    m.putIfAbsent("city", () => city);

                    var data=await Downloader.saveGet(link,m);
                    print("hi");
                    print(data);

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