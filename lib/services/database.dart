import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
getUserByusername(String username)

{

}
uploadUserInfo(userMap)
{
  FirebaseFirestore.instance.collection("users")
  .add(userMap);


}
}