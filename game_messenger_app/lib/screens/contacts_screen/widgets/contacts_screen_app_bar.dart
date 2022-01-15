import 'package:flutter/material.dart';
import 'package:game_messenger_app/constants.dart';

class ContactsScreenAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const ContactsScreenAppbar({Key? key}) : super(key: key);

  // The name should be retrived from the data model that containes the list contact names

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: theWhite,
      elevation: 0,
      title: const Text(
        "Contacts",
        style: TextStyle(color: theActive),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
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
