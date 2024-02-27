import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mandalart/DataModel/User.dart';

class LoginViewModel extends ChangeNotifier {
  late final MandalartUser _user = MandalartUser();
  late final FirebaseAuth _auth = FirebaseAuth.instance;
  late final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> loginOrLogout() async {
    if (_user.checkLogin()) {
      signOut();
    } else {
      signInWithGoogle();
    }
  }

  String getUserName() {
    if (_user.name.isEmpty) return throw Exception('No login information');
    return _user.name;
  }

  String getUserCollectionName() {
    if (_user.collection.isEmpty)
      return throw Exception('No login information');
    return _user.collection;
  }

  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      _user.name = userCredential.user!.displayName!;
      notifyListeners();
      print('Login with google : ${_user.name}');
    } catch (error) {
      print('error $error');
    }
  }

  Future<void> signOut() async {
    _user.name = '';
    _user.collection = '';
    print('Logout : ${_user.name}');
    notifyListeners();
  }

  bool checkLogin() {
    return _user.checkLogin();
  }
}
