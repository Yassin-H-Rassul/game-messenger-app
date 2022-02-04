import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_messenger_app/services/authentication_service.dart';

class CreateProfileAccount extends StatefulWidget {
  CreateProfileAccount({Key? key}) : super(key: key);

  @override
  State<CreateProfileAccount> createState() => _CreateProfileAccountState();
}

class _CreateProfileAccountState extends State<CreateProfileAccount> {
  AuthService _authService = AuthService();

  Color color = Color(0xffeeeeee);

  @override
  Widget build(BuildContext context) {
    var MQH = MediaQuery.of(context).size.height;
    var MQW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Your Profile',
          style: Theme.of(context).textTheme.bodyText2,
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
            SizedBox(
                height: MQW >= 820 && MQH >= 1180
                    ? 130.0
                    : MQW >= 768 && MQH >= 1024
                        ? 100.0
                        : 0),
            TextButton(
              onPressed: () {},
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: color,
                    radius: MQW >= 820 && MQH >= 1180
                        ? 75.0
                        : MQW >= 768 && MQH >= 1024
                            ? 75.0
                            : 40,
                    child: ClipOval(
                        child: Image.network(
                      "https://static.thenounproject.com/png/3465604-200.png",
                      fit: BoxFit.cover,
                      width: 90.0,
                      height: 90.0,
                    )),
                  ),
                  Positioned(
                    bottom: 1,
                    right: 1,
                    child: Container(
                      height: 30,
                      width: 30,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
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
                style: TextStyle(
                    fontSize: MQW >= 820 && MQH >= 1180
                        ? 25.0
                        : MQW >= 768 && MQH >= 1024
                            ? 25.0
                            : 10),
                obscureText: false,
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
                onPressed: () {},
                child: Text('Save'),
                style: Theme.of(context).elevatedButtonTheme.style,
              ),
            )
          ],
        )),
      ),
    );
  }
}
