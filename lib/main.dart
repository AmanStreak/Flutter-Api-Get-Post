import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp>{

  final String url = "";

  var response;

  getdata() async{
    response = await http.post(url, body: {'phoneOrEmail': 'email', 'password': 'password', 'ipAddress' : '127.0.0.1', 'source': 'source'});
    print(response.statusCode);
    print(response.body);
  }
//  final String url = "http://dummy.restapiexample.com/api/v1/employees";
////  var response;
////  getdata() async{
////    response = await http.get(Uri.encodeFull(url));
////    print(response.runtimeType);
////    print(response.statusCode);
////    if(response.statusCode == 200){
////      var jsonResponse = jsonDecode(response.body)['data'];
////      print(jsonResponse[0]["employee_name"]);
////    }
////  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(88.0),
              child: RaisedButton(
                child: Text("Press"),
                onPressed: (){
                  getdata();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}