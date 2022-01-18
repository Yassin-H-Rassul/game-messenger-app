import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SearchTextfield extends StatefulWidget {
  const SearchTextfield({Key? key}) : super(key: key);

  @override
  _SearchTextfieldState createState() => _SearchTextfieldState();
}

class _SearchTextfieldState extends State<SearchTextfield> {
  @override
  Widget build(BuildContext context) {
    final mediaQuerySize = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.all(10),
      width: mediaQuerySize.width * 0.92,
      child: CupertinoSearchTextField(
        placeholderStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontSize: 16,
              color: theGrey,
            ),
        itemSize: 20,
        prefixInsets: EdgeInsets.all(8),
        backgroundColor: Colors.grey[100],
        borderRadius: BorderRadius.zero,
      ),
    );
  }
}
