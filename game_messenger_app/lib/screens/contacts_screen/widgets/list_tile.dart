import 'package:flutter/material.dart';
import 'package:game_messenger_app/model/general_user.dart';
import 'package:game_messenger_app/screens/contacts_screen/widgets/user_image.dart';

import '../../../constants.dart';

class CustomListTile extends StatelessWidget {
  final GeneralUser theUser;
  const CustomListTile({
    Key? key,
    required this.theUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: UserImage(
        currentUser: theUser,
      ),
      title: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Text(
          theUser.username!,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Text(
          theUser.lastSeenOnline!,
          style:
              Theme.of(context).textTheme.subtitle2?.copyWith(color: theGrey),
        ),
      ),
    );
  }
}
