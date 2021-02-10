import 'package:chat_app/services/Auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailEditingController = new TextEditingController();
  TextEditingController passwordEditingController = new TextEditingController();
  AuthMethod authmethods =new AuthMethod();
  final formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat App"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(

mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: 240),
              TextField(
                decoration: InputDecoration(
                    hintText: "Email",
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                    ))),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.only(left: 230, top: 10),
                child: Text("Forget Password ?"),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue,
                ),
                child: Text(
                  "Sign in",
                  style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue,
                ),
                child: Text(
                  "Sign in with Google ",
                  style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an account ?"),
                  Text("Register now",style: TextStyle(decoration:TextDecoration.underline),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
