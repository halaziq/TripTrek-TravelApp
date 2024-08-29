import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService{

 FirebaseAuth _auth = FirebaseAuth.instance;

 Future <User?> signUpWithEmailAndPassword(String email, String password)async{

  try{
    UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    return credential.user;
  } catch(e){
    print("Some error occured");
  }
  return null;
 }

 Future <User?> signInWithEmailAndPassword(String email, String password)async{

  try{
    UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
    return credential.user;
  } catch(e){
    print("Some error occured");
  }
  return null;
 }

 Future <void> addUser(
  String uid, 
  String userName, 
  String firstName, 
  String lastName, 
  String gender,
  String email,
  String phone,
  String emergencyNumber,
  String image){
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return users.doc(uid)
    .set({
      'userName':userName,
      'firstName':firstName,
      'lastName':lastName,
      'gender':gender,
      'email':email,
      'phone':phone,
      'emergencyNumber':emergencyNumber,
      'image':image 
    }).then((value) => print("User Added"))
    .catchError((error) => print("Failed to added user: $error"));
  }

    Future <void> updateUserInfo(String uid, Map<String, dynamic> newUserData)async{
    CollectionReference user = FirebaseFirestore.instance.collection('users');
    return user.doc(uid)
    .update(newUserData)
    .then((value) => print("User Updated"))
    .catchError((error) => print("Failed to update user: $error"));
  }

 

}