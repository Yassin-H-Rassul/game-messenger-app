import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

Widget bottomNavigation() {
  return (Container(
    color: Color(0xFFFFFFFF),
    // width: 375,
    height: 83,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.people),
          iconSize: 25,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.chat_bubble),
          iconSize: 25,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.sports_esports),
          iconSize: 25,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_horiz),
          iconSize: 25,
        ),
      ],
    ),
  ));
}
