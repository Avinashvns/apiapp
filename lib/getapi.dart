import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Downloader{
  static Future saveGet(String link,Map<String,dynamic>m)async{
    final url=Uri.http(
      "surevih.com",
      link,
      m);
    print(url);

    try{
      final responce=await http.get(url);
      return responce.body;
    }
    catch(e){
      print(e);
    }
  }
}