import 'package:flutter/material.dart';
import 'package:game_messenger_app/model/contactScreenData.dart';

// this is just for contact list it is seprate from the (contact)
// so this maked scroll able
class chatList extends StatelessWidget {

  
  final lastSeenList=User.generateUsers();// getting data from the contactScreenData.dart (this is just temrory data)
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25,vertical: 40),
        decoration: BoxDecoration(
          color:Colors.white,
        ),
        child: _buildContacts(),
      ),
    );
  }

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
           borderRadius: BorderRadius.circular(8.0),
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(lastSeenList[index].lastChat,textAlign: TextAlign.right,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.caption,
                ),
                Container(
         child: Text("1", textAlign: TextAlign.center,),
         padding: EdgeInsets.all(1),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(56.76),
           color: Colors.lightBlueAccent,
           shape:BoxShape.rectangle,),
         height: 20,
         width:20,
       ),
              ],
            ),
            
           ],
         ),
       ),
     ],
   );
  
  
 }

}