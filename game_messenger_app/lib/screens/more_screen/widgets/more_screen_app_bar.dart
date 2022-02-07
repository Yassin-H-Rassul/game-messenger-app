import 'package:flutter/material.dart';

class MoreScreenAppBar extends StatelessWidget   implements PreferredSizeWidget {
  const MoreScreenAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(
        "More",
        style: Theme.of(context).textTheme.headline5,
      ),
      //removing back arrow button
      automaticallyImplyLeading: false,

      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

 
}
