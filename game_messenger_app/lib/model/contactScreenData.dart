
import 'package:flutter/material.dart';
//ps: this data it just for know how the page look like with data
class User{
  num id;
  String name;
  String lastSeen;
  String iconUrl;
  Color bgColor;
  User(this.id,this.name,this.lastSeen,this.bgColor,this.iconUrl);

static List<User> generateUsers(){
return 

[User(1, 'Kwestan Hasan','Last seen yesterday',Colors.amber, 'assets/images/icons/logo.png'),
User(2, 'Muhammad Ahmad','Last seen 30 minutes ago',Colors.purple, 'assets/images/icons/logo.png'),
User(3, 'Shene Mustafa','Last seen 3 hours ago',Colors.green, 'assets/images/icons/3.jpg'),
User(4, 'Srwa Rashid','Online',Colors.greenAccent, 'assets/images/icons/logo.png'),
User(5, 'Rawsht Doski','Online' ,Colors.pinkAccent,'assets/images/icons/logo.png'),
User(6, 'Srwa Anas','Last seen 30 minutes ago',Colors.indigoAccent ,'assets/images/icons/logo.png'),
User(7, 'Srwa Rashid','Online',Colors.greenAccent, 'assets/images/icons/logo.png'),
User(8, 'Rawsht Doski','Online' ,Colors.pinkAccent,'assets/images/icons/logo.png'),
User(9, 'Srwa Anas','Last seen 30 minutes ago',Colors.indigoAccent ,'assets/images/icons/logo.png'),
User(10, 'Srwa Rashid','Online',Colors.greenAccent, 'assets/images/icons/logo.png'),
User(11, 'Rawsht Doski','Online' ,Colors.pinkAccent,'assets/images/icons/logo.png'),
User(12, 'Srwa Anas','Last seen 30 minutes ago',Colors.indigoAccent ,'assets/images/icons/logo.png'),
User(13, 'Srwa Rashid','Online',Colors.greenAccent, 'assets/images/icons/logo.png'),
User(14, 'Rawsht Doski','Online' ,Colors.pinkAccent,'assets/images/icons/logo.png'),
User(15, 'Srwa Anas','Last seen 30 minutes ago',Colors.indigoAccent ,'assets/images/icons/logo.png'),
User(16, 'Srwa Rashid','Online',Colors.black87, 'assets/images/icons/logo.png'),
User(17, 'Rawsht Doski','Online' ,Colors.pinkAccent,'assets/images/icons/logo.png'),
User(18, 'Srwa Anas','Last seen 30 minutes ago',Colors.indigoAccent ,'assets/images/icons/logo.png'),
User(19, 'Srwa Rashid','Online',Colors.greenAccent, 'assets/images/icons/logo.png'),
User(20, 'Rawsht Doski','Online' ,Colors.pinkAccent,'assets/images/icons/logo.png'),
User(21, 'Srwa Anas','Last seen 30 minutes ago',Colors.indigoAccent ,'assets/images/icons/logo.png'),];

}
}
