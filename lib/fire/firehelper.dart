// import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Firehelper{
  final FirebaseAuth auth = FirebaseAuth.instance;
  get user => auth.currentUser;

  Future<String?> signup({required String email, required String passwrd})async {
    try{
    await auth.createUserWithEmailAndPassword(email: email, password: passwrd);
    return null;
    }on FirebaseAuthException catch(e){ // if registration faild messahe will shown here
      return e.message;
    }
  }

  Future<String?> signin({required String email, required String passwrd})async {
    try{
      await auth.signInWithEmailAndPassword(email: email, password: passwrd);
      return null;
    }on FirebaseAuthException catch(e){
      return e.message;
    }
  }
  Future<String?> signout()async {
 
      await auth.signOut();
      return null;
    
  }
}