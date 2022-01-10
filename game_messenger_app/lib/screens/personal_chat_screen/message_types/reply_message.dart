import 'package:flutter/material.dart';
import 'package:game_messenger_app/constants.dart';
import 'package:game_messenger_app/model/messages_model.dart';
import 'package:game_messenger_app/screens/personal_chat_screen/message_types/decoration.dart';

class ReplyMessage extends StatelessWidget {
  final MessagesModel messages;
  const ReplyMessage({Key? key, required this.messages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MessageDecoration _customDecor = MessageDecoration();
    return Container(
      padding: _customDecor.messagePadding(),
      decoration: _customDecor.messageContainer(messages),
      child: Column(
        crossAxisAlignment: _customDecor.contentAlign(messages),
        children: [
          // the stack is for the reply part, and still needs adjusment
          Stack(
            children: [
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: _customDecor.doubleContainer(messages),
                child: Column(
                  crossAxisAlignment: _customDecor.contentAlign(messages),
                  children: [
                    Text(
                      messages.sender ? 'Him' : 'You',
                      style: const TextStyle(fontSize: 10, color: theBlue),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Can I come over?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff1B2B48),
                      ),
                    ),
                  ],
                ),
              ),
              //note that this container shape can't grow according to the message length, still needs adjusment
              Container(
                height: 69,
                width: 4,
                decoration: const BoxDecoration(
                  color: theBlue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
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
