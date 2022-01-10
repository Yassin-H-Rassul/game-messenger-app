import 'package:flutter/material.dart';
import 'package:game_messenger_app/constants.dart';
import 'package:game_messenger_app/model/messages_model.dart';
import 'package:game_messenger_app/screens/personal_chat_screen/message_types/decoration.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioMessage extends StatelessWidget {
  //for accessing the data model
  final MessagesModel message;
  const AudioMessage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this is for accessing messageDcoration class and is everywere is needed
    MessageDecoration _customDecor = MessageDecoration();

    return Container(
      decoration: _customDecor.messageContainer(message),
      padding: _customDecor.messagePadding(),
      child: Column(
        crossAxisAlignment: _customDecor.contentAlign(message),
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.55,
            decoration: _customDecor.doubleContainer(message),
            padding: const EdgeInsets.all(2),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.play_arrow),
                  color: theWhite,
                ),
                Text(
                  '0.20',
                  style: GoogleFonts.mulish(
                    fontSize: 10,
                    color: message.sender ? theWhite : theLigntBlue,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    _customDecor.soundWave(5),
                    _customDecor.soundWave(15),
                    _customDecor.soundWave(19),
                    _customDecor.soundWave(15),
                    _customDecor.soundWave(21),
                    _customDecor.soundWave(13),
                    _customDecor.soundWave(17),
                    _customDecor.soundWave(9),
                    _customDecor.soundWave(21),
                    _customDecor.soundWave(5),
                    _customDecor.soundWave(15),
                    _customDecor.soundWave(19),
                    _customDecor.soundWave(15),
                    _customDecor.soundWave(21),
                    _customDecor.soundWave(13),
                    _customDecor.soundWave(17),
                    _customDecor.soundWave(9),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          _customDecor.timeText(message),
        ],
      ),
    );
  }
}
