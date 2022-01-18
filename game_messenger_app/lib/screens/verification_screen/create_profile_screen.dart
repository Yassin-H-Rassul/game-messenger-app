import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateProfileAccount extends StatelessWidget {
  CreateProfileAccount({Key? key}) : super(key: key);

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
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {},
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: color,
                  radius: 50,
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
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
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
              onPressed: () {},
              child: Text('Save'),
              style: Theme.of(context).elevatedButtonTheme.style,
            ),
          )
        ],
      )),
    );
  }
}
