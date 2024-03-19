import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proj1/pages/Home.dart';
import 'package:proj1/pages/chat_page.dart';
import 'package:proj1/pages/login_page.dart';
import 'package:proj1/pages/register_page.dart';

import 'firebase_options.dart';

import 'helper/ApiService.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ScholderChat(),);
}


class ScholderChat extends StatelessWidget {
  const ScholderChat({Key? key}):super(key: key);


  @override
  Widget build(BuildContext context) {
    // Map<String, dynamic> countries = await ApiService.get('countries');

    return MaterialApp(
      debugShowCheckedModeBanner: false,
    routes: {  
      LoginPage.id :(context) => LoginPage(),
      RegistePage.id :(context) => RegistePage(),
      Home.id:(context) => Home(),
      ChatPage.id:(context) => ChatPage(),
      
    },
      initialRoute: 'LoginPage',
    );
  }}
