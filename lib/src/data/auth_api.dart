import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthApi{
  const AuthApi({required FirebaseAuth auth, required FirebaseFirestore firestore}): _auth=auth, _firestore=firestore;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;


}