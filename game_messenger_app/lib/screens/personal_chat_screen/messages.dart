import 'package:flutter/material.dart';
import 'package:game_messenger_app/model/messages_model.dart';
import 'package:game_messenger_app/screens/personal_chat_screen/message_types/audio_message.dart';
import 'package:game_messenger_app/screens/personal_chat_screen/message_types/image_message.dart';
import 'package:game_messenger_app/screens/personal_chat_screen/message_types/reply_message.dart';

import 'message_types/text_message.dart';

class Messages extends StatelessWidget {
  //for accessing message datamodel
  final MessagesModel message;
  const Messages({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        seperateMessage(),
      ],
    );
  }

  // With the help of this switch we seperate each message comes to thia widget
  seperateMessage() {
    switch (message.type) {
      case (messageType.text):
        return TextMessage(messages: message);
      case (messageType.image):
        return ImageMessage(message: message);
      case (messageType.audio):
        return AudioMessage(message: message);
      case (messageType.reply):
        return ReplyMessage(messages: message);
      default:
        return const Text('some Error');
    }
  }

  // we can use this function to tell when was the last time you received the message, but I couldn't implement it, ** It is not useable now
  lastTimeMessage(MessagesModel currentMessage, MessagesModel PreviousMessage) {
    final int differece =
        currentMessage.time.difference(PreviousMessage.time).inMinutes;
    if (differece > 30) {
      return const Center(
        child: Text('Sat, 17/10'),
      );
    }
  }
}
