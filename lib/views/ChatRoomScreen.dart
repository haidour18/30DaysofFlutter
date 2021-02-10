import 'package:chat_app/services/Auth.dart';
import 'package:chat_app/views/signin.dart';
import 'package:flutter/material.dart';
class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom>{
 AuthMethod authMethod = new AuthMethod();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
actions: [
  GestureDetector(
    onTap: (){
      authMethod.signOut();
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SignIn()));
    },
    child: Container(
    
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.exit_to_app),
      
    ),
  )

],      ),

    );
  }
}
