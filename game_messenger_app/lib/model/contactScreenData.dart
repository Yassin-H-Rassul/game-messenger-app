
import 'package:flutter/material.dart';
//ps: this data it just for know how the page look like with data
class User{
  num id;
  String name;
  String lastSeen;
  String iconUrl;
  Color bgColor;
  String lastChat;
  User(this.id,this.name,this.lastSeen,this.bgColor,this.iconUrl,this.lastChat);

static List<User> generateUsers(){
return 

[User(1, 'Kwestan Hasan','Last seen yesterday',Colors.amber, 'assets/images/icons/logo.png',"Good morning, did you sleep weel?"),
User(2, 'Muhammad Ahmad','Last seen 30 minutes ago',Colors.purple, 'assets/images/icons/logo.png',"how is it going?"),
User(3, 'Shene Mustafa','Last seen 3 hours ago',Colors.green, 'assets/images/icons/3.jpg',"hhhhhhhhhh "),
User(4, 'Srwa Rashid','Online',Colors.greenAccent, 'assets/images/icons/logo.png',"alrght, noted"),
User(5, 'Rawsht Doski','Online' ,Colors.pinkAccent,'assets/images/icons/logo.png',"Bye!!"),
User(6, 'Srwa Anas','Last seen 30 minutes ago',Colors.indigoAccent ,'assets/images/icons/logo.png',"hi"),
User(7, 'Srwa Rashid','Online',Colors.greenAccent, 'assets/images/icons/logo.png',""),
User(8, 'Rawsht Doski','Online' ,Colors.pinkAccent,'assets/images/icons/logo.png',""),
User(9, 'Srwa Anas','Last seen 30 minutes ago',Colors.indigoAccent ,'assets/images/icons/logo.png',"well Done"),
User(10, 'Srwa Rashid','Online',Colors.greenAccent, 'assets/images/icons/logo.png',"hi milad"),
User(11, 'Rawsht Doski','Online' ,Colors.pinkAccent,'assets/images/icons/logo.png',"what you up to",),
User(12, 'Srwa Anas','Last seen 30 minutes ago',Colors.indigoAccent ,'assets/images/icons/logo.png',"found it"),
User(13, 'Srwa Rashid','Online',Colors.greenAccent, 'assets/images/icons/logo.png',"helpppp"),
User(14, 'Rawsht Doski','Online' ,Colors.pinkAccent,'assets/images/icons/logo.png',"need to find...."),
User(15, 'Srwa Anas','Last seen 30 minutes ago',Colors.indigoAccent ,'assets/images/icons/logo.png',"07501,,,,"),
User(16, 'Srwa Rashid','Online',Colors.black87, 'assets/images/icons/logo.png',"*******s**"),
User(17, 'Rawsht Doski','Online' ,Colors.pinkAccent,'assets/images/icons/logo.png',"????"),
User(18, 'Srwa Anas','Last seen 30 minutes ago',Colors.indigoAccent ,'assets/images/icons/logo.png',"kind a like....."),
User(19, 'Srwa Rashid','Online',Colors.greenAccent, 'assets/images/icons/logo.png',"you are the....."),
User(20, 'Rawsht Doski','Online' ,Colors.pinkAccent,'assets/images/icons/logo.png',"van!!"),
User(21, 'Srwa Anas','Last seen 30 minutes ago',Colors.indigoAccent ,'assets/images/icons/logo.png',"help!!!!!"),];

}
}
