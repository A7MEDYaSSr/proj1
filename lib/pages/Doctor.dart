

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Doctor extends StatelessWidget {
  const Doctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar:  AppBar(
        title: Text(
          "Dashborad",
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


       body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView( scrollDirection: Axis.vertical,
        children: [
          SizedBox( height: 20,),

          Container(
            margin: EdgeInsets.all(24),
            child:  Text('Dashboard Child',
              style: TextStyle(
                  fontSize: 30, fontWeight:FontWeight.bold
              ) ,
            ),
          ),

          SizedBox( height: 20,),

          //Name..
          Container(height: 100,width: 100,
            decoration:  BoxDecoration(
                color:Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16)  ,     )  ),


            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:
             Row (children: [
               Text('Name:', style:TextStyle( fontWeight: FontWeight.bold , fontSize:20 ) , ),
               SizedBox(width: 10,),
               Text('Ammar Alaa ' , style:TextStyle(  fontSize:20 )),

             ],)
            )
            ,),

          SizedBox(height: 10,),
          //Age
          Container(height: 100,width: 100,
            decoration:  BoxDecoration(
                color:Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16)  ,     )  ),


            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                Row (children: [
                  Text('Age:', style:TextStyle( fontWeight: FontWeight.bold , fontSize:20 ) , ),
                  SizedBox(width: 10,),
                  Text('9 Years ' , style:TextStyle(  fontSize:20 )),

                ],)
            )
            ,),

          SizedBox(height: 10,),

         // Case
          Container(height: 100,width: 100,
            decoration:  BoxDecoration(
                color:Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16)  ,     )  ),


            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                Row (children: [
                  Text('Case:', style:TextStyle( fontWeight: FontWeight.bold , fontSize:20 ) , ),
                  SizedBox(width: 10,),
                  Text('Speech Patient' , style:TextStyle(  fontSize:20 )),

                ],)
            )
            ,),

          SizedBox(height: 10,),

        //  Test
          Container(height: 100,width: 100,
            decoration:  BoxDecoration(
                color:Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16)  , )
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              Row( mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [

                Container( height: 10,width: 10,),
                Text("Test",style: TextStyle(fontSize: 25 , color: Colors.black),),
                Container( height: 10,width: 10,),
                Icon(Icons.arrow_forward_ios),

              ],),
            )
            ,),

          SizedBox(height: 10,),


        //  Level 1
          Container(height: 100,width: 100,
            decoration:  BoxDecoration(
                color:Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16)  , )
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              Row( mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [

                Container( height: 10,width: 10,),
                Text("Level 1",style: TextStyle(fontSize: 25 , color: Colors.black),),
                Container( height: 10,width: 10,),
                Icon(Icons.arrow_forward_ios),

              ],),
            )
            ,),

          SizedBox(height: 10,),

        //  Level 2
          Container(height: 100,width: 100,
            decoration:  BoxDecoration(
                color:Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16)  , )
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              Row( mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [

                Container( height: 10,width: 10,),
                Text("level 2",style: TextStyle(fontSize: 25 , color: Colors.black),),
                Container( height: 10,width: 10,),
                Icon(Icons.arrow_forward_ios),

              ],),
            )
            ,),

          SizedBox(height: 10,),





        ],),
      ),




    );
  }
}