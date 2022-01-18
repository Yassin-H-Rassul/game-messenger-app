import 'package:flutter/material.dart';
import 'package:game_messenger_app/model/messages_model.dart';
import 'package:game_messenger_app/screens/personal_chat_screen/message_types/decoration.dart';

class ImageMessage extends StatelessWidget {
  //for accessing message data models
  final MessagesModel message;
  const ImageMessage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //for accessing MessageDecoration class
    MessageDecoration _customDecor = MessageDecoration();
    return Container(
      decoration: _customDecor.messageContainer(message),
      padding: _customDecor.messagePadding(),
      child: Column(
        crossAxisAlignment: _customDecor.contentAlign(message),
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset(
                  'assets/images/cat.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          _customDecor.messageText(message),
          const SizedBox(
            height: 6,
          ),
          _customDecor.timeText(message),
        ],
      ),
    );
  }
}
