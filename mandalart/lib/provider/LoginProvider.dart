import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mandalart/DataModel/User.dart';

class LoginViewModel extends ChangeNotifier {
  late final MandalartUser _user = MandalartUser();
  late final FirebaseAuth _auth = FirebaseAuth.instance;
  late final GoogleSignIn _googleSignIn = GoogleSignIn();

  LoginViewModel() {
    getUserInfo();
  }

  Stream<User?> get user => _auth.authStateChanges();

  Future<void> handleAuth() async {
    if (_user.checkLogin()) {
      _signOut();
    } else {
      _signInWithGoogle();
    }
  }

  Future<void> _signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      await _auth.signInWithCredential(credential);

      getUserInfo();

      print('Login with google : ${_user.name}');
    } catch (error) {
      print('error $error');
    }
    notifyListeners();
  }

  void getUserInfo() {
    try {
      User? user = _auth.currentUser;
      if (user != null) {
        _user.name = user.displayName!;
        _user.email = user.email!;
        _user.photoUrl = user.photoURL!;
      } else {
        print('User is not logged in');
      }
    } catch (error) {
      print('Error getting user info: $error');
    }
  }

  Future<void> _signOut() async {
    _user.name = '';
    _user.collection = '';
    _user.photoUrl = '';

    await _auth.signOut();
    notifyListeners();
  }

  bool checkLogin() {
    return _user.checkLogin();
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

  String getUserEmail() {
    if (_user.email.isEmpty) return throw Exception('No login information');
    return _user.email;
  }

  String getUserPhotoUrl() {
    if (_user.photoUrl.isEmpty) return throw Exception('No login information');
    return _user.photoUrl;
  }
}
