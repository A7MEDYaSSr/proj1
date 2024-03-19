
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proj1/pages/Doctor.dart';
import 'package:proj1/pages/chat_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: const Text('AmmarAlaa99', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ), ),
              accountEmail: const Text('AmmarAlaa99@gmail.com'),
              currentAccountPicture: ClipOval(child: Image.asset('assets/images/logo.jpeg'),),
              decoration: BoxDecoration(
                color: Colors.blue[300]),
          ),

          //home
          ListTile(
            leading:Icon(Icons.home) ,
            title:Text('Home') ,

          ),

          //DashBored
          ListTile(
            leading:Icon(Icons.account_circle_rounded) ,
            title:Text('DashBored') ,
            onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>(Doctor()))); }  ,

          ),

          //  chat
          ListTile(
            leading:Icon(Icons.chat) ,
            title:Text('Chat') ,
             onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>(ChatPage()))); }  ,
          ),

          //Notiftions
          ListTile(
            leading:Icon(Icons.notifications) ,
            title:Text('Notificion') ,

          ),

          //  setting
          ListTile(
            leading:Icon(Icons.settings) ,
            title:Text('setting') ,

          ),

          //  Sign Out
          ListTile(
            leading:Icon(Icons.logout) ,
            title:Text('Sign Out') ,
            // onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>(SignIn()))); }  ,
          ),









        ],),

    );
  }
}