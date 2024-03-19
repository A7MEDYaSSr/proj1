
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullTest extends StatelessWidget {
  const FullTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar:  AppBar(
        title: Text(
          "Test",
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.blueGrey],
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),

        body:  ListView(scrollDirection: Axis.vertical, children: [
        SizedBox(height: 40, width: 40,),



        Row( children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/aa.png" , height: 150, width: 150,),
          ) , 


          Container(height: 20,width: 20,),


           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/bb.png" , height: 150, width: 150,),
          ) , 


        //  Image.asset("assets/images/A.png" , height: 20, width: 20,) , //chest

        ],),


  Row( children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/cc.png" , height: 150, width: 150,),
          ) , 


          Container(height: 20,width: 20,),


           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/dd.png" , height: 150, width: 150,),
          ) , 


        //  Image.asset("assets/images/A.png" , height: 20, width: 20,) , //chest

        ],),

  SizedBox(height: 40, width: 40,),


   Row(children: [
           SizedBox(height:20 , width: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/tt.png" , height: 50, width: 50,),
          ) , 


          Container(height: 20,width: 20,),


           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/tt.png" , height: 50, width: 50,),
          ) , 

             Container(height: 20,width: 20,),

         Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/tt.png" , height: 50, width: 50,),
          ) , 


          Container(height: 20,width: 20,),


           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/tt.png" , height: 50, width: 50,),
          ) , 




      ],),


        ],)
    );
  }
}