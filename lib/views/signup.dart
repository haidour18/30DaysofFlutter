import 'package:chat_app/services/Auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final formkey =GlobalKey<FormState>();
  AuthMethod authmethods =new AuthMethod();
  bool isLoading =true;
  TextEditingController usernamecontorller = new TextEditingController();
  TextEditingController passwordcontorller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
signMeUp() {
  if (formkey.currentState.validate( )) {
    setState( () {
      isLoading = true;
    } );
    
  }

  authmethods.signUpWithEmailAndPassword(emailcontroller.text, passwordcontorller.text).then((val){
    print("$val");
  });}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChatApp"),
      ),
      body: isLoading ? Container (
        child: Center (
          child: CircularProgressIndicator(

          ),
        ),
      ):
        SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 240),
                TextFormField(
                  validator: (val){
                  return val.isEmpty || val.length<4 ? "Please provide username ":null;
                  },
                  controller: usernamecontorller,
                  decoration: InputDecoration(
                      hintText: "Username",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.blue,
                      ))),
                ),
                TextFormField(
                  validator: (val){
                    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-      zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val) ? null : "Enter correct email";
                  },
                  controller: emailcontroller,
                  decoration: InputDecoration(
                      hintText: "Email",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.blue,
                      ))),
                ),
                TextFormField(
                  obscureText: true,
                  validator:  (val){
                    return val.length < 6 ? "Enter Password 6+ characters" : null;
                  },
                  controller: passwordcontorller,
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

                GestureDetector(
                  onTap: (){
                    signMeUp();
                  },
                  child: Container(

                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue,
                    ),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
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
                    "Sign up with Google ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already have an account ?"),
                    Text(
                      "Sign in now",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
