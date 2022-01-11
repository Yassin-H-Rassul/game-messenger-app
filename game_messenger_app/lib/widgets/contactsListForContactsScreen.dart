import 'package:flutter/material.dart';
import 'package:game_messenger_app/model/contactScreenData.dart';

final lastSeenList=User.generateUsers();
Widget _buildContacts() {
  
   return ListView.separated(
     itemBuilder: (context,index)=>_buildContact(index,context),
     separatorBuilder: (_,index)=>SizedBox(height: 30), 
     itemCount: lastSeenList.length);
 }
Widget _buildContact(int index,BuildContext context) {
   return Row(children: [
       Container(
         padding: EdgeInsets.all(1),
         decoration: BoxDecoration(
           color: lastSeenList[index].bgColor,
           shape:BoxShape.rectangle,),
         height: 45,
         width:45,
       ),
       SizedBox(width: 15,),
       Flexible(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          
           children: [
            Row(
             
              children: [
                Text(lastSeenList[index].name,
                style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            Text(lastSeenList[index].lastSeen,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.caption,
                ),
            
           ],
         ),
       ),
     ],
   );
  
 }

