// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_messenger_app/model/general_user.dart';
import 'package:game_messenger_app/services/RealTime_DB_service.dart';
import 'package:game_messenger_app/services/authentication_service.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:firebase_storage/firebase_storage.dart';

class CreateProfileAccount extends StatefulWidget {
  CreateProfileAccount({Key? key}) : super(key: key);

  @override
  State<CreateProfileAccount> createState() => _CreateProfileAccountState();
}

class _CreateProfileAccountState extends State<CreateProfileAccount> {
  Reference reference = FirebaseStorage.instance.ref().child('usersImages');
  final ImagePicker _picker = ImagePicker();
  String? image;
  AuthService _authService = AuthService();
  final nameController = TextEditingController();
  Color color = Color(0xffeeeeee);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Your Profile',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        actions: [
          IconButton(
            onPressed: () {
              _authService.signOut().then((value) {
                Navigator.of(context).pushNamed('/');
              });
            },
            icon: Icon(
              Icons.logout,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      showDialogPickImage(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: color,
                      radius: 50,
                      child: ClipOval(
                          child: image == null
                              ? Image.network(
                                  "https://static.thenounproject.com/png/3465604-200.png",
                                  fit: BoxFit.cover,
                                  width: 90.0,
                                  height: 90.0,
                                )
                              : Image.network(
                                  image!,
                                  fit: BoxFit.cover,
                                  width: 90.0,
                                  height: 90.0,
                                )),
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    right: 1,
                    child: image == null
                        ? Container(
                            height: 30,
                            width: 30,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          )
                        : Container(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                obscureText: true,
                autofocus: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: color,
                  filled: true,
                  labelText: 'Your name (Required)',
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(minWidth: 340),
              child: ElevatedButton(
                onPressed: () {
                  if (image != null && nameController.text != '') {
                    GeneralUser _generalUser = GeneralUser(
                        phoneNumber:
                            Provider.of<AuthService>(context, listen: false)
                                    .theUser!
                                    .phoneNumber ??
                                '',
                        imageUrl: image ?? 'image',
                        uid: Provider.of<AuthService>(context, listen: false)
                            .theUser!
                            .uid,
                        username: nameController.text,
                        isOnline: true,
                        lastSeenOnline: 'today');

                    Provider.of<RealTimeDb>(context, listen: false)
                        .addingUser(_generalUser)
                        .then((value) {
                      Navigator.pushNamed(context, '/contact');
                    });
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Row(
                              children: [
                                Icon(
                                  Icons.warning,
                                  size: 27,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Text(
                                      'Please set an image and write your user name'),
                                )
                              ],
                            ),
                          );
                        });
                  }
                },
                child: Text('Save'),
                style: Theme.of(context).elevatedButtonTheme.style,
              ),
            )
          ],
        )),
      ),
    );
  }

  void showDialogPickImage(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('choose from camera or gallery'),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.grey[100],
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Text('camera'),
                        SizedBox(
                          width: 2,
                        ),
                        IconButton(
                            onPressed: () async {
                              await _picker
                                  .pickImage(source: ImageSource.camera)
                                  .then((value) async {
                                if (value != null) {
                                  await reference
                                      .child(Provider.of<AuthService>(context,
                                              listen: false)
                                          .theUser!
                                          .uid)
                                      .putFile(File(value.path));
                                  reference
                                      .child(Provider.of<AuthService>(context,
                                              listen: false)
                                          .theUser!
                                          .uid)
                                      .getDownloadURL()
                                      .then((value) {
                                    image = value;
                                    setState(() {});
                                  });
                                  if (Navigator.canPop(context)) {
                                    Navigator.pop(context);
                                  }
                                }
                              });
                            },
                            icon: Icon(Icons.camera)),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey[100],
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Text('gallery'),
                        SizedBox(
                          width: 2,
                        ),
                        IconButton(
                            onPressed: () async {
                              await _picker
                                  .pickImage(source: ImageSource.gallery)
                                  .then((value) async {
                                if (value != null) {
                                  await reference
                                      .child(Provider.of<AuthService>(context,
                                              listen: false)
                                          .theUser!
                                          .uid)
                                      .putFile(File(value.path));
                                  reference
                                      .child(Provider.of<AuthService>(context,
                                              listen: false)
                                          .theUser!
                                          .uid)
                                      .getDownloadURL()
                                      .then((value) {
                                    image = value;
                                    setState(() {});
                                  });
                                  if (Navigator.canPop(context)) {
                                    Navigator.pop(context);
                                  }
                                }
                              });
                            },
                            icon: Icon(Icons.image)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
