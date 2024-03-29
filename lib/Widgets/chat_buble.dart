

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proj1/constants.dart';

class ChatBuble extends StatelessWidget {
  const ChatBuble({super.key,});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(

        padding: EdgeInsets.only(left: 16 , top: 16 ,bottom: 16, right: 16 ),

        margin: EdgeInsets.symmetric(horizontal: 16 ,vertical: 8),

        // height: 65,
        // width: 150,
        // alignment: Alignment.centerLeft,
       
      
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
               topLeft: Radius.circular(32),
               topRight: Radius.circular(32),
               bottomRight: Radius.circular(32),  
               ),
          color: KPrimaryColor,
        ),
        child: Text(
                  'Hello Zekko!',
                  style: TextStyle(color: Colors.white),
                ),
      ),
    );
  }
}
