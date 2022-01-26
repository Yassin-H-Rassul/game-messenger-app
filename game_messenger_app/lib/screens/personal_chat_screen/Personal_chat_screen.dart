import 'package:flutter/material.dart';
import 'package:game_messenger_app/constants.dart';
import 'package:game_messenger_app/model/messages_model.dart';
import 'package:game_messenger_app/screens/personal_chat_screen/message_types/decoration.dart';
import 'package:game_messenger_app/screens/personal_chat_screen/messages.dart';
import 'package:game_messenger_app/widgets/personal_chat_app_bar.dart';
import 'package:game_messenger_app/widgets/personal_chat_text_field.dart';



class PersonalChatScreen extends StatefulWidget {
  const PersonalChatScreen({Key? key}) : super(key: key);

  @override
  _PersonalChatScreen createState() => _PersonalChatScreen();
}

class _PersonalChatScreen extends State<PersonalChatScreen> {
  OverlayEntry? entry;
  bool overlay = false;

  @override
  void initState() {
    super.initState();

    if (true) {
      WidgetsBinding.instance!.addPostFrameCallback((_) => showoverlay());
    }
  }

  void showoverlay() {
    final overlay = Overlay.of(context)!;
    final renderbox = context.findRenderObject() as RenderBox;
    final size = renderbox.size;
    final offset = renderbox.localToGlobal(Offset.zero);
    entry = OverlayEntry(
        builder: (context) => Positioned(
            width: 350,
            top: 120,
            left: 20,
            child: Material(
                child: Container(
              width: 300,
              height: 42,
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                border: Border.all(color: Colors.black26),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  border: InputBorder.none,
                ),
              ),
            ))));

    overlay.insert(entry!);
  }

  @override
  Widget build(BuildContext context) {
    // Here we access to the MessageDecoration only for Align the messages on the entire screen
    MessageDecoration _customDecor = MessageDecoration();
    return Scaffold(
      backgroundColor: backGround,
      //app bar widget find this the Widgets
      appBar: PersonalChatAppBar(),
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