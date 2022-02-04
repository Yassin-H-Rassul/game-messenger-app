import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  MoreScreen({Key? key}) : super(key: key);

  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  bool user_expaned = false;
  Icon expand_more = Icon(Icons.navigate_next);
  bool notification_expaned = false;
  Icon notification_more = Icon(Icons.navigate_next);
  bool appe_expanded = false;
  Icon appe_more = Icon(Icons.navigate_next);
  String notification_val = "ON";
  bool notefication = true;
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
        //backgroundColor: const Color(0xFFFFFFFF),
        backgroundColor: Colors.white10,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 15),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView(
                  children: [
                    Row(
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
                              children: [
                                Text("User name"),
                                Text(
                                  "+964 75X XXX XXXX",
                                  style: TextStyle(color: Colors.black26),
                                )
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (user_expaned == false) {
                                  expand_more = const Icon(Icons.expand_more);
                                  user_expaned = true;
                                } else {
                                  expand_more =
                                      const Icon(Icons.navigate_next);
                                  user_expaned = false;
                                }
                              });
                            },
                            iconSize: 34,
                            icon: expand_more),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Visibility(
                      visible: user_expaned,
                      child: const Text("Edit your name"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Visibility(
                      visible: user_expaned,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 300,
                            child: TextField(
                              decoration: InputDecoration(
                                label: Text("username"),
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
                          ElevatedButton(
                              onPressed: () {}, child: const Text("save"))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Row(
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
                                  if (appe_expanded == false) {
                                    appe_more = const Icon(Icons.expand_more);
                                    appe_expanded = true;
                                  } else {
                                    appe_more = const Icon(Icons.navigate_next);
                                    appe_expanded = false;
                                  }
                                });
                              },
                              iconSize: 34,
                              icon: appe_more),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Visibility(
                        visible: appe_expanded,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 180,
                              height: 50,
                              child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.grey[200]),
                                ),
                                onPressed: () {},
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
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black87),
                                ),
                                onPressed: () {},
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
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Row(
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
                                  if (notification_expaned == false) {
                                    notification_more =
                                        const Icon(Icons.expand_more);
                                    notification_expaned = true;
                                  } else {
                                    notification_more =
                                        const Icon(Icons.navigate_next);
                                    notification_expaned = false;
                                  }
                                });
                              },
                              iconSize: 34,
                              icon: notification_more),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: notification_expaned,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(notification_val),
                          Switch.adaptive(
                            value: notefication,
                            onChanged: (val) {
                              setState(() {
                                notefication = val;
                                if (notefication == false) {
                                  notification_val = "OFF";
                                } else {
                                  notification_val = "ON";
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
