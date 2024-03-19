import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TextFormPassword extends StatefulWidget {
   TextFormPassword({ this.hintText, this.onChanged});

String? hintText;
Function(String)? onChanged;

  @override
  State<TextFormPassword> createState() => _TextFormPasswordState();
}

class _TextFormPasswordState extends State<TextFormPassword> {
bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: (data) {
        if(data!.isEmpty){
          return 'Field is Requird';
        }
      },
      onChanged: widget.onChanged ,
            // obscureText: true,
            obscureText: _obscureText,
              decoration: InputDecoration(
                hintText: widget.hintText,
                
                suffixIcon: GestureDetector(
                      onTap: () { 
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      
                      },
                      child: Icon(_obscureText ?Icons.visibility :Icons.visibility_off, 
                      color: Colors.black,),
                ),


// IconButton(
//                 icon: Icon(Icons.visibility  ),
//                     color: Colors.black
//                 , onPressed: () { },),





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





