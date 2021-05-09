import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_delivery_receptionist/src/models/auth/index.dart';

class AuthApi{
  const AuthApi({required FirebaseAuth auth, required FirebaseFirestore firestore}): _auth=auth, _firestore=firestore;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  Future<EmployeeUser> login({required String email, required String password})async{
    final UserCredential currUser = await _auth.signInWithEmailAndPassword(email: email, password: password);
    final String uid = currUser.user!.uid;
    final DocumentSnapshot employee = await _firestore.doc('employees/$uid').get();

    return EmployeeUser.fromJson(employee.data());
  }
}