import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_messenger_app/widgets/bottom_navigation.dart';
import 'package:game_messenger_app/widgets/widget.dart';

class MoreScreen extends StatefulWidget {
  MoreScreen({Key? key}) : super(key: key);

  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "More",
          style: TextStyle(color: Colors.black),
        ),
        //removing back arrow button
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFFFFFFF),
      ),
      body: Container(
        color: const Color(0xFFFFFFFF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              //giving a padding just for user not for list
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        //get user image
                        'assets/images/user.png',
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: const [
                          //user name and info
                          Text("user name"),
                          Text("+964 75x xxx xx xx"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            //this expanded let you use listview inside column
            Expanded(
                //making a list to account and chat ...etc
                child: ListView(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const ListTile(
                    title: Text("Account"),
                    leading: Icon(Icons.person_outline),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const ListTile(
                    title: Text("Chats"),
                    leading: Icon(Icons.chat_bubble),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const ListTile(
                    title: Text("Appereance"),
                    leading: Icon(Icons.flare),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const ListTile(
                    title: Text("Notification"),
                    leading: Icon(Icons.notifications),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const ListTile(
                    title: Text("Privacy"),
                    leading: Icon(Icons.gpp_maybe),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const ListTile(
                    title: Text("Data Usage"),
                    leading: Icon(Icons.folder),
                  ),
                ),
                const Divider(),
                TextButton(
                  onPressed: () {},
                  child: const ListTile(
                    title: Text("Help"),
                    leading: Icon(Icons.help_outline),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const ListTile(
                    title: Text("Invite Your Friends"),
                    leading: Icon(Icons.mail_outline),
                  ),
                ),
              ],
            )),
            //calling bottom navigation form widgets folder
            bottomNavigation(),
          ],
        ),
      ),
    );
  }
}
