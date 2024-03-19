

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proj1/Widgets/NavBar.dart';
import 'package:proj1/pages/Test.dart';

class Home extends StatelessWidget {
 Home({super.key});
static String id = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

         appBar:  AppBar(
      title: Text(
      "Home Page",
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


         body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
              SizedBox(height: 60,),

            Container(
              child: Text('Hello,',
                style: TextStyle( fontSize: 18 , color: Colors.grey,) ),
            ),

            SizedBox(height: 5,),

            Container(
              // margin: EdgeInsets.all(24),
              child:  Text('Ammar Alla.' ,
                style: TextStyle(
                    fontSize: 30, fontWeight:FontWeight.bold
                ) ,
              ),
            ),

            SizedBox(height: 25,),



            //searchtext feld
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration:  BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child:Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                  child:  TextField(
                    decoration:InputDecoration(
                        border: InputBorder.none,
                        hintText: 'search',
                        suffixIcon: GestureDetector(
                          onTap: () {},
                          child: Icon(Icons.search,
                            color: Colors.black,),
                        ),
                    ),
                  ),
                ) ,
              ),
            ),

            SizedBox(height: 25,),

            Container(
              // margin: EdgeInsets.all(24),
              child:  Text('Activtes' ,
                style: TextStyle(
                    fontSize: 30, fontWeight:FontWeight.bold
                ) ,
              ),
            ),

            SizedBox(height: 25,),
            //CARDs
            Container(height: 200, width: 100,
              child: ListView(scrollDirection: Axis.horizontal, children: [

                //test_blue
                Padding(padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Test()));
                  },
                    child:  Container(width: 200,height: 100 ,
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.blue) ,
                      child: Center(child: Text('Test' , style: TextStyle(fontSize:32,fontWeight:FontWeight.bold  ,color: Colors.white),),),

                    ),
                  ),
                ),

                //green
                Padding(padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap:(){
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                  },
                  child:  Container(width: 200,height: 100 ,
                    decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.green) ,
                    child: Center(child: Text('Level 1' , style: TextStyle(fontSize:32, color: Colors.white),),),

                  ),
                ),
                ),

                        //Yellow
                Padding(padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap:(){},
                    child:  Container(width: 200,height: 100 ,
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.yellow) ,
                      child: Center(child: Text('Level 2' , style: TextStyle(fontSize:32, color: Colors.white),),),

                    ),
                  ),
                ),

                           // Red
                Padding(padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap:(){},
                    child:  Container(width: 200,height: 100 ,
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.red) ,
                      child: Center(child: Text('Level 3' , style: TextStyle(fontSize:32, color: Colors.white),),),

                    ),
                  ),
                ),



              ],),
            ),






            //top doctor
            Container(
              // margin: EdgeInsets.all(24),
              child:  Text('List Of Doctors' ,
                style: TextStyle(
                    fontSize: 30, fontWeight:FontWeight.bold
                ) ,
              ),
            ),

            SizedBox(height: 25,),

            //List of docs
            //doc-1-
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
                  CircleAvatar(backgroundImage:AssetImage("assets/images/doc.png") ,radius: 30, ),
                  // Image.asset('assets/doc.png', width: 40,),
                  Container( height: 10,width: 10,),
                  Text("Dr.HamedMostafa",style: TextStyle(fontSize: 25 , color: Colors.black),),
                  Container( height: 10,width: 10,),
                  Icon(Icons.arrow_forward_ios),

                ],),
            )
              ,),

            SizedBox(height: 10,),
            //doc-2-
            Container(height: 100,width: 100,
              decoration:  BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16)  ,     )  ),


              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                Row( mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
                  CircleAvatar(backgroundImage:AssetImage("assets/images/doc.png") ,radius: 30, ),
                  // Image.asset('assets/doc.png', width: 40,),
                  Container( height: 10,width: 10,),
                  Text("Dr.HamedMostafa",style: TextStyle(fontSize: 25 , color: Colors.black),),
                  Container( height: 10,width: 10,),
                  Icon(Icons.arrow_forward_ios),

                ],),
              )
              ,),

            SizedBox(height: 10,),
            //doc-3-
            Container(height: 100,width: 100,
              decoration:  BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16)  ,     )  ),


              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                Row( mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
                  CircleAvatar(backgroundImage:AssetImage("assets/images/doc.png") ,radius: 30, ),
                  //  Image.asset('assets/doc.png', width: 40,),
                  Container( height: 10,width: 10,),
                  Text("Dr.HamedMostafa",style: TextStyle(fontSize: 25 , color: Colors.black),),
                  Container( height: 10,width: 10,),
                  Icon(Icons.arrow_forward_ios),

                ],),
              )
              ,),
          ],
        ),
      ),

         bottomNavigationBar: BottomNavigationBar(

        // currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: "Activty",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "setting",
          ),

        ],
      ),

          drawer: NavBar(),
         






















































    );
  }
} 