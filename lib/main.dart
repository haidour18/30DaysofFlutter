import 'package:chat_app/views/signup.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/_app/views/signin.dart';
import 'package:chat_app/_app/views/signup.dart';
void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ChatApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SignUp(),
    );
  }
}
