import 'package:flutter/material.dart';
import 'package:game_messenger_app/constants.dart';

class PersonalChatTextField extends StatelessWidget {
  const PersonalChatTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: theWhite,
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 4),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: 83.46,
      child: SafeArea(
        child: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: theGrey,
                )),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: const Color(0xffF7F7FC),
                    borderRadius: BorderRadius.circular(4)),
                child: const TextField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: theGrey),
                      hintText: 'Type something...',
                      border: InputBorder.none),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send),
              color: theBlue,
            )
          ],
        ),
      ),
    );
  }
}
