import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_messenger_app/screens/Chat_Screen/chatScreen.dart';


// ps you can only have this page in Route 
//                              '/chat
//                              ': (context) => chat
//(),

class chats extends StatelessWidget {
  const chats ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
  title: Text('Chat',textAlign: TextAlign.left,
  style: Theme.of(context).textTheme.headline4),
  backgroundColor: Colors.white,
  actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.chat,
        color: Colors.black
      ),
      onPressed: () {
        // do something
      },
    )
  ],
),
body: Center(
  
        child: Column(
          children: [
            CupertinoSearchTextField(),// this is just temprory search
            chatList(),// the contact list chatsScreen.dart
            
 
            
           ])
           )
    );
  
  }

  
}

