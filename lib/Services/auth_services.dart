import 'package:firebase_auth/firebase_auth.dart';

class AuthSerVice {
   final FirebaseAuth _auth = FirebaseAuth.instance;

   // ---------------- Sign In
   Future<User?> _signInWithEmailAndPassword(String email , String password) async {
     try {
       UserCredential result = await _auth.signInWithEmailAndPassword(
           email: email, password: password);
       User? user = result.user;
     } catch(e) {
       print(e.toString());
       return null;
     }
   }

   //--------------------------- Sign up
   Future<User?> registerWithEmailAndPassword(String email , String password) async {
     try {
       UserCredential result = await _auth.createUserWithEmailAndPassword(
           email: email, password: password);
       User? user = result.user;
     } catch(e) {
       print(e.toString());
       return null;
     }
   }
  // -------------------------- Log out
  Future<void> signOut() async {
     try {
       return await _auth.signOut();
     } catch(e) {
       print(e.toString());
       return null;
     }
  }

}