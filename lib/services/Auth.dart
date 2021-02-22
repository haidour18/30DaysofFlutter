import 'package:firebase_auth/firebase_auth.dart';
import 'package:chat_app/Model/User.dart';

class AuthMethod {
  //Registration

  FirebaseAuth auth = FirebaseAuth.instance;

  Future signInWithEmailAndPassword(String email, String password) async {
    try {


      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  Future signUpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
  Future resetPassword(String email )async{
try{
  return await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
}
catch(e){
print(e.toString());
}
  }
  Future signOut ()async{
    try{
      await auth.signOut();
    }
    catch(e){
print(e.toString());
    }
  }
}
