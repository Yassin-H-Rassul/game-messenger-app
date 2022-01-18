import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_messenger_app/constants.dart';
import 'package:game_messenger_app/mock%20list%20data/mock_user_data.dart';
import 'package:game_messenger_app/screens/contacts_screen/widgets/contacts_screen_app_bar.dart';
import 'package:game_messenger_app/screens/contacts_screen/widgets/list_tile.dart';
import 'package:game_messenger_app/screens/contacts_screen/widgets/search_text_field.dart';
import 'package:game_messenger_app/screens/contacts_screen/widgets/user_image.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ContactsScreenAppbar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SearchTextfield(),
              Container(
                height: mediaQuerySize.height * 0.8,
                child: Center(
                  child: ListView.builder(
                    itemCount: userList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: CustomListTile(
                              theUser: userList[index],
                            ),
                          ),
                          Divider(
                            color: Colors.grey[200],
                            thickness: 1,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
