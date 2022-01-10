import 'package:flutter/material.dart';
import 'package:game_messenger_app/constants.dart';
import 'package:game_messenger_app/model/messages_model.dart';
import 'package:game_messenger_app/screens/personal_chat_screen/message_types/decoration.dart';
import 'package:game_messenger_app/screens/personal_chat_screen/messages.dart';
import 'package:game_messenger_app/widgets/personal_chat_app_bar.dart';
import 'package:game_messenger_app/widgets/personal_chat_text_field.dart';

class PersonalChatScreen extends StatelessWidget {
  const PersonalChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Here we access to the MessageDecoration only for Align the messages on the entire screen
    MessageDecoration _customDecor = MessageDecoration();
    return Scaffold(
      backgroundColor: backGround,
      //app bar widget find this the Widgets
      appBar: const PersonalChatAppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messageFields.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment:
                      _customDecor.contentAlign(messageFields[index]),
                  children: [
                    Messages(
                      message: messageFields[index],
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            ),
          ),
          //the bottom text input field Widget, find this in the widgets
          const PersonalChatTextField(),
        ],
      ),
    );
  }
}
