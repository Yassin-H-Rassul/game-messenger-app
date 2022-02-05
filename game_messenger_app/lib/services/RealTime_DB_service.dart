import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:game_messenger_app/model/general_user.dart';

class RealTimeDb extends ChangeNotifier {
  final DatabaseReference _dbRefrence =
      FirebaseDatabase.instance.ref().child('users');

  Future<void> addingUser(GeneralUser generalUser) async {
    await _dbRefrence.child(generalUser.uid ?? 'id').set(generalUser.toMap());
  }
}
