// import 'dart:js_interop';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proj1/Widgets/chat_buble.dart';
import 'package:proj1/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class ChatPage extends StatelessWidget {
  static String id = 'ChatPage';
  FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference messages = FirebaseFirestore.instance.collection(KMessagesColection);

      TextEditingController controller = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return FutureBuilder<QuerySnapshot>(
      future:messages.get(),
      
     builder:(context, snapshot) {
      
      
      if (snapshot.hasData){

       print(snapshot.data !.docs[0]['message']);
       
        return Scaffold(
      // appBar: AppBar(
      //   // automaticallyImplyLeading: false,
      //   title: Text('Chat'),
      //   backgroundColor: KPrimaryColor,
      //   centerTitle: true,
      // ),
      appBar:  AppBar(
      title: Text(
      "Chat",
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




      
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ChatBuble();
              },
            ),
          ),

        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            controller: controller ,
            onSubmitted: (data) {
             messages.add({
              'message':data,
             });
              controller.clear();
            },



            decoration: InputDecoration(
              hintText: 'Send Message',
              suffixIcon: Icon(Icons.send),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16)
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.black) 

              )
            ),

          ),
        ),

        ],
      ),
    ); 
      } 



        else{ 

            return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text('Chat'),
        backgroundColor: KPrimaryColor,
        centerTitle: true,
      ),
      

      
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ChatBuble();
              },
            ),
          ),

        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            controller: controller ,
            onSubmitted: (data) {
             messages.add({
              'message':data,
             });
              controller.clear();
            },



            decoration: InputDecoration(
              hintText: 'Send Message',
              suffixIcon: Icon(Icons.send),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16)
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.black) 

              )
            ),

          ),
        ),

        ],
      ),
    ); 
      } 



           



     }, );


        
        

      

  }
}
