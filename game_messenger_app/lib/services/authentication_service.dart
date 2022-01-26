import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthService extends ChangeNotifier {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? theUser = FirebaseAuth.instance.currentUser;

  void setUser(User? aUser) {
    theUser = aUser;
    notifyListeners();
  }

  Future<void> autoPhoneVerification(String phoneNo, BuildContext context,
      [enteredSmsCode]) async {
    if (enteredSmsCode != null) {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNo,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _firebaseAuth
              .signInWithCredential(credential)
              .then((userCredential) {
            if (userCredential.user != null) {
              setUser(userCredential.user!);
              Navigator.pushReplacementNamed(context, '/createProfile');
            } else {
              print('&&&&&&&&&&&&&&&&&&&&& could not join in auto');
            }
          }).catchError((e) {
            print('auto');
            print(e);
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          print('error in verification failed' + e.message!);
        },
        codeSent: (verificationId, [forceResendingToken]) async {
          await _manualPhoneVerification(
              enteredSmsCode, context, verificationId);
        },
        codeAutoRetrievalTimeout: (String newVerificationId) async {
          await _manualPhoneVerification(
              enteredSmsCode, context, newVerificationId);
        },
        timeout: Duration(seconds: 120),
      );
    } else if (enteredSmsCode == null) {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNo,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _firebaseAuth
              .signInWithCredential(credential)
              .then((userCredential) {
            if (userCredential.user != null) {
              setUser(userCredential.user);
              Navigator.pushReplacementNamed(context, '/createProfile');
            } else {
              print('&&&&&&&&&&&&&&&&&&&&& could not join in auto');
            }
          }).catchError((e) {
            print(e);
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          print('error in verification failed' + e.message!);
        },
        codeSent: (verificationId, [forceResendingToken]) async {},
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
        Navigator.pushReplacementNamed(context, '/createProfile');
      } else {
        print('&&&&&&&&&&&&&&&&&&&&& could not join in manual');
      }
    }).catchError((e) {
      print('manual');
      print(e);
    });
  }

  void signOut() {
    _firebaseAuth.signOut();
    setUser(null);
  }
}
