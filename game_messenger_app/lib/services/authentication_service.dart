import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? theUser = FirebaseAuth.instance.currentUser;
  String verificationIdFromFirebase = 'empty';

  void setUser(User? aUser) {
    theUser = aUser;
    notifyListeners();
  }

  Future<void> autoPhoneVerification(String phoneNo, BuildContext context,
      [enteredSmsCode]) async {
    if (enteredSmsCode != null) {
      await _manualPhoneVerification(
          enteredSmsCode, context, verificationIdFromFirebase);
    }
    if (enteredSmsCode == null) {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNo,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _firebaseAuth
              .signInWithCredential(credential)
              .then((userCredential) {
            if (userCredential.user != null) {
              setUser(userCredential.user);
              Navigator.of(context).pushNamedAndRemoveUntil(
                  '/createProfile', (Route<dynamic> route) => false);
            }
          }).catchError((e) {
            print(e);
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          print('error in verification failed' + e.message!);
        },
        codeSent: (verificationId, [forceResendingToken]) async {
          verificationIdFromFirebase = verificationId;
        },
        codeAutoRetrievalTimeout: (String newVerificationId) async {},
      );
    }
  }

  Future<void> _manualPhoneVerification(
      String enteredSmsCode, BuildContext context, String verID) async {
    var _credential = PhoneAuthProvider.credential(
        verificationId: verID, smsCode: enteredSmsCode);
    await _firebaseAuth
        .signInWithCredential(_credential)
        .then((userCredential) {
      if (userCredential.user != null) {
        setUser(userCredential.user);
        Navigator.of(context).pushNamedAndRemoveUntil(
            '/createProfile', (Route<dynamic> route) => false);
      }
    }).catchError((e) {
      print('manual');
      print(e);
    });
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    setUser(null);
  }
}
