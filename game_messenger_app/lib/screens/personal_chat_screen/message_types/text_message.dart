import 'package:flutter/material.dart';
import 'package:game_messenger_app/model/messages_model.dart';
import 'package:game_messenger_app/screens/personal_chat_screen/message_types/decoration.dart';

class TextMessage extends StatelessWidget {
  //for accessing message data model
  final MessagesModel messages;
  const TextMessage({Key? key, required this.messages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // For accessing MessageDecoration class
    MessageDecoration _customDecor = MessageDecoration();
    return Container(
      decoration: _customDecor.messageContainer(messages),
      padding: _customDecor.messagePadding(),
      child: Column(
        //Here we align the message content not entire chat column
        crossAxisAlignment: _customDecor.contentAlign(messages),
        children: [
          _customDecor.messageText(messages),
          const SizedBox(
            height: 5,
          ),
          _customDecor.timeText(messages),
        ],
      ),
    );
  }
}
