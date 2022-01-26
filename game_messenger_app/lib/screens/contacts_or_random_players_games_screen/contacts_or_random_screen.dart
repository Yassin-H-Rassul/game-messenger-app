import 'package:flutter/material.dart';
import 'package:game_messenger_app/screens/contacts_or_random_players_games_screen/widgets/contact_or_random_app_bar.dart';
import 'package:game_messenger_app/screens/contacts_or_random_players_games_screen/widgets/contact_or_random_container_button.dart';
import 'package:game_messenger_app/screens/contacts_or_random_players_games_screen/widgets/question_container.dart';
import 'package:game_messenger_app/screens/contacts_or_random_players_games_screen/widgets/the_mighty_or.dart';




class ContactsOrRandomScreen extends StatefulWidget {
  const ContactsOrRandomScreen({Key? key}) : super(key: key);

  @override
  _ContactsOrRandomScreenState createState() => _ContactsOrRandomScreenState();
}

class _ContactsOrRandomScreenState extends State<ContactsOrRandomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // appbar containing only a title
      appBar: appBar(),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // container to hold the question text
          questionContainer(),

          // contacts button............................................
          contactOrRandContainerButton('Contacts',
              "https://i.pinimg.com/originals/64/99/a6/6499a631cc153a5ba87d15222a5c5791.png"),

          // the Or text...............................................
          theMightyOr(),

          // random player button.......................................
          contactOrRandContainerButton('Random Player',
              "https://media.istockphoto.com/vectors/anonymous-flat-icon-vector-id992322658?k=20&m=992322658&s=612x612&w=0&h=ELK-6e8yD6OdHS8qoM65WNa09o7adf7YA_vM_OSQg1s=")
        ],
      ),
    );
  }
}
