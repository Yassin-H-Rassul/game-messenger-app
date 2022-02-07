import 'package:flutter/material.dart';
import 'package:game_messenger_app/constants.dart';
import 'package:game_messenger_app/screens/more_screen/widgets/more_screen_app_bar.dart';
import 'package:game_messenger_app/services/shared_preferences/shared_preferences_helper.dart';
import 'package:provider/provider.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  bool userExpaned = false;
  Icon expandMore = const Icon(Icons.navigate_next);
  bool notificationExpaned = false;
  Icon notificationMore = const Icon(Icons.navigate_next);
  bool appeExpanded = false;
  Icon appeMore = const Icon(Icons.navigate_next);
  String notificationVal = "ON";
  bool notefication = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MoreScreenAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 15),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView(
                  children: [
                    buildImgAndUserNameMethod(),
                    const SizedBox(
                      height: 35,
                    ),
                    buildEditYourNameOption(),
                    const SizedBox(
                      height: 10,
                    ),
                    buildEditYourNameField(),
                    const SizedBox(
                      height: 30,
                    ),
                    buildAppereanceOption(),
                    const SizedBox(
                      height: 10,
                    ),
                    buildLightAndDarkModeButtons(context),
                    const SizedBox(
                      height: 30,
                    ),
                    buildNotificationOption(),
                    buildNotificationSwitch()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
// 3:17 in the morning, didn't know how to work with extract widgets that have parameters so i just used extract method
  Visibility buildEditYourNameOption() {
    return Visibility(
                    visible: userExpaned,
                    child: const Text("Edit your name"),
                  );
  }

  Visibility buildNotificationSwitch() {
    return Visibility(
      visible: notificationExpaned,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(notificationVal),
          Switch.adaptive(
            value: notefication,
            onChanged: (val) {
              setState(() {
                notefication = val;
                if (notefication == false) {
                  notificationVal = "OFF";
                } else {
                  notificationVal = "ON";
                }
              });
            },
          ),
        ],
      ),
    );
  }

  Row buildNotificationOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Icon(Icons.notifications),
            SizedBox(
              width: 10,
            ),
            Text("Notification"),
          ],
        ),
        IconButton(
            onPressed: () {
              setState(() {
                if (notificationExpaned == false) {
                  notificationMore = const Icon(Icons.expand_more);
                  notificationExpaned = true;
                } else {
                  notificationMore = const Icon(Icons.navigate_next);
                  notificationExpaned = false;
                }
              });
            },
            iconSize: 34,
            icon: notificationMore),
      ],
    );
  }

  Visibility buildLightAndDarkModeButtons(BuildContext context) {
    return Visibility(
        visible: appeExpanded,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 180,
              height: 50,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                ),
                onPressed: () async {
                  Provider.of<SharedPreferencesHelper>(context, listen: false)
                      .setTheme("light");
                  setState(() {});
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.light_mode,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Light Mode",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 180,
              height: 50,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black87),
                ),
                onPressed: () async {
                  Provider.of<SharedPreferencesHelper>(context, listen: false)
                      .setTheme("dark");
                  setState(() {});
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.dark_mode,
                      color: Colors.white70,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Dark Mode",
                      style: TextStyle(color: Colors.white70),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }

  Row buildAppereanceOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Icon(Icons.light_mode),
            SizedBox(
              width: 10,
            ),
            Text("Appereance"),
          ],
        ),
        IconButton(
            onPressed: () {
              setState(() {
                if (appeExpanded == false) {
                  appeMore = const Icon(Icons.expand_more);
                  appeExpanded = true;
                } else {
                  appeMore = const Icon(Icons.navigate_next);
                  appeExpanded = false;
                }
              });
            },
            iconSize: 34,
            icon: appeMore),
      ],
    );
  }

  Visibility buildEditYourNameField() {
    return Visibility(
      visible: userExpaned,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                label: const Text(
                  "username",
                  style: TextStyle(color: theGrey),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0,
                      color: Colors.grey.shade100,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                fillColor: Colors.grey[200],
                filled: true,
              ),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("save"))
        ],
      ),
    );
  }

  Row buildImgAndUserNameMethod() {
    return Row(
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
              width: 20,
            ),
            Column(
              children: const [
                Text("User name"),
                Text(
                  "+964 75X XXX XXXX",
                  style: TextStyle(color: theGrey),
                )
              ],
            ),
          ],
        ),
        IconButton(
            onPressed: () {
              setState(() {
                if (userExpaned == false) {
                  expandMore = const Icon(Icons.expand_more);
                  userExpaned = true;
                } else {
                  expandMore = const Icon(Icons.navigate_next);
                  userExpaned = false;
                }
              });
            },
            iconSize: 34,
            icon: expandMore),
      ],
    );
  }
}
