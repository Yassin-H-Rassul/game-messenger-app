import 'package:flutter/material.dart';
import 'package:game_messenger_app/constants.dart';

class PersonalChatAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const PersonalChatAppBar({Key? key}) : super(key: key);

  // The name should be retrived from the data model that containes the list contact names

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: theWhite,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.keyboard_arrow_left, color: theActive),
      ),
      title: const Text(
        "Kwestan Hasan",
        style: TextStyle(color: theActive),
      ),
      titleSpacing: -7,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: theActive,
          ),
        ),
      ],
    );
  }

  // This neccessary don't Touch it
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
