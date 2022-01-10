import 'package:flutter/material.dart';
import 'package:game_messenger_app/model/messages_model.dart';
import '../../../constants.dart';
import 'package:intl/intl.dart';

//This class contains the decoration for all tpyes of messages, so many redundant code is eliminated.

class MessageDecoration {
  MessageDecoration();

//reuseable BoxDecoration for the first message containers
  messageContainer(MessagesModel message) {
    return BoxDecoration(
      color: message.sender ? theBlue : theWhite,
      borderRadius: message.sender
          ? const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            )
          : const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
    );
  }

  //reuseable BoxDecoration for container inside container like voice and reply
  doubleContainer(MessagesModel message) {
    return BoxDecoration(
      color: message.sender ? theLigntBlue : const Color(0xffEDEDED),
      borderRadius: BorderRadius.circular(4),
    );
  }

  //reuseable padding
  messagePadding() {
    return const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 15,
    );
  }

  //reuseable alignment based on the message sender and receiver, for content and main chat column.
  contentAlign(MessagesModel message) {
    return message.sender ? CrossAxisAlignment.end : CrossAxisAlignment.start;
  }

  //this is for message text which all of them have same property, if we change anything here it will be changed in all messages
  messageText(
    MessagesModel messages,
  ) {
    return Text(
      messages.message,
      style: TextStyle(
        fontSize: 14,
        color: messages.sender ? theWhite : theActive,
      ),
    );
  }

  //this is for the time when a message sent, it saves the entire date, but we only need hour and minute here.
  timeText(
    MessagesModel messages,
  ) {
    return Text(
      DateFormat.Hm().format(messages.time),
      style: TextStyle(
        fontSize: 10,
        color: messages.sender ? theWhite : theGrey,
      ),
    );
  }

  // this is for the sound wave, it is very advanced but now it is work
  soundWave(
    double hight,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      width: 2,
      height: hight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2), color: theWhite),
    );
  }
}
