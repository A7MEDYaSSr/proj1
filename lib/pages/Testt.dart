
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proj1/pages/FullTest.dart';

class Testt extends StatelessWidget {
  const Testt({super.key});

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

       body:ListView( scrollDirection: Axis.vertical,
        children: [  SizedBox(height: 25,),
          Container(
            margin: EdgeInsets.all(24),
            child:  Text('Test (2)',
              style: TextStyle(
                  fontSize: 30, fontWeight:FontWeight.bold
              ) ,
            ),
          ),


          Image.asset("assets/images/sound.jpeg",width: 90, height: 90,),

          SizedBox(height: 50,),

      Image.asset("assets/images/dog.png",width: 150, height: 150,),

          SizedBox(height: 100,),

          Column(
            children: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,  children: [
                CircleAvatar(backgroundImage:AssetImage("assets/images/true.jpeg") ,radius: 30, ),

                SizedBox(height: 50,),

                CircleAvatar(backgroundImage:AssetImage("assets/images/false.png") ,radius: 30, ),

              ],),
            ],
          ),


  GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>(FullTest())));} ,
      child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30)
            ) ,
            width: 10,
            height:60,
            child: Center(child: Text('Next', style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold,color: Colors.white ), ),),
          ),
    )
        ],),




    );
  }
}