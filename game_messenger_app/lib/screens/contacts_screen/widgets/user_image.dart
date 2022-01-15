import 'package:flutter/material.dart';
import 'package:game_messenger_app/model/general_user.dart';

class UserImage extends StatelessWidget {
  final GeneralUser currentUser;
  UserImage({Key? key, required GeneralUser this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuerySize = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: mediaQuerySize.width * 0.119,
          height: mediaQuerySize.height * 0.07,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              currentUser.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        currentUser.isOnline!
            ? Positioned(
                right: -11,
                top: -11,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 8,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 6,
                    ),
                  ),
                ),
              )
            : Container(
                color: Colors.black,
                width: 1,
                height: 1,
              ),
      ],
    );
  }
}
