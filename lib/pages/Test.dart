 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proj1/pages/Testt.dart';

class Test extends StatelessWidget {
  const Test({super.key});

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


         body: ListView( scrollDirection: Axis.vertical,
      children: [  SizedBox(height: 25,),
        Container(
          margin: EdgeInsets.all(24),
          child:  Text('Test (1)',
            style: TextStyle(
                fontSize: 30, fontWeight:FontWeight.bold
            ) ,
          ),
        ),

        SizedBox(height: 50,),
        Center(
          child: Container(

            padding: EdgeInsets.all(20.0),
            child: Table(

              defaultColumnWidth:const FixedColumnWidth(90.0) ,
              border: TableBorder.all(color: Colors.black),
              children: [
                TableRow(children: [
                  // CELL(1)
                  Container( color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text('Test', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold,),)),
                    ),
                  ),

                  //CELL2
                  Container( color: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text('Result',style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold,) )),
                    ),
                  ),

                ]),

                TableRow(children: [
                  //CELL3
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Elephant'),
                        Image.asset("assets/images/elephant.jpeg" , height: 40,),
                      ],
                    ),
                  ),

                  //CELL 4
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Center(child:CircleAvatar(backgroundImage:AssetImage("assets/images/false.png") ,radius: 30, ), ),),
                  ),

                ]),


                TableRow(children: [
                  //CELL5
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Car'),
                        Image.asset("assets/images/car.jpeg" , height: 40,),
                      ],
                    ),
                  ),

                  //CELL 6
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Center(child:CircleAvatar(backgroundImage:AssetImage("assets/images/true.jpeg") ,radius: 30, ), ),),
                  ),

                ]),



              ],
            ),
          ),
        ),
        
        SizedBox(height: 50,),

          GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>(Testt())));} ,
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