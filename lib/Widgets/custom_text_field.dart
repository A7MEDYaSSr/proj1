import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomFormTextField extends StatelessWidget {
   CustomFormTextField({this.onChanged ,this.hintText});
String? hintText;
Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: (data) {
        if(data!.isEmpty){
          return 'Field is Requird';
        }
      },
      onChanged: onChanged ,
              
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey),
                    borderRadius: BorderRadius.circular(20)
                ),





                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey
                  )
                ),
              ),
            );
  }
}