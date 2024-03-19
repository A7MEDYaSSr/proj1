import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
   CustomButton({ this.onTap ,required this.title});
String title;
VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30)
            ) ,
            width: 10,
            height:60,
            child: Center(child: Text(title, style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold), ),),
          ),
    );
  }
}