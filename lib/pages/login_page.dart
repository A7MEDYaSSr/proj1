import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:proj1/Widgets/custom_button.dart';
import 'package:proj1/Widgets/custom_text_field.dart';
import 'package:proj1/Widgets/textfield_password.dart';
import 'package:proj1/constants.dart';
import 'package:proj1/helper/show_snack_bar.dart';
import 'package:proj1/pages/Home.dart';
import 'package:proj1/pages/chat_page.dart';
// ignore: unused_import
import 'package:proj1/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});
static String id = 'LoginPage';
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email, password;
  bool isLoading = false;

  GlobalKey<FormState> Formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: KPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
            key: Formkey,
            child: ListView(
              children: [
                SizedBox(
                  height: 75,
                ),

                Image.asset(
                  'assets/images/logo.jpeg',
                  height: 150,
                ),
                // text
                  Center(
                    child: Text('SIGN IN',
                    style: TextStyle( fontSize: 40 , fontWeight: FontWeight.bold),),
                  ),

                //Subtitle
                Center( child:  Text('Welcome back Nice to see you again :-',
                  style: TextStyle( fontSize: 18 ,),),),

                SizedBox(
                  height: 15,
                ),

                Row(
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                // TextField(
                //   decoration: InputDecoration(
                //     enabledBorder: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: Colors.white),
                //         borderRadius: BorderRadius.circular(30)
                //     ),
                //     border: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: Colors.white
                //       )
                //     ),
                //   ),
                // ),

                //.. text email ..//
                CustomFormTextField(
                  hintText: 'Email',
                  onChanged: (data) {
                    email = data;
                  },
                ),

                SizedBox(
                  height: 20,
                ),
                //.. text password ..//
                TextFormPassword(
                  hintText: 'password',
                  onChanged: (data) {
                    password = data;
                  },
                ),

                SizedBox(
                  height: 20,
                ),

                // Container(
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(30)
                //   ) ,
                //   width: double.infinity,
                //   height: 60,
                //   child: Center(child: Text("LOGIN"),),
                // )

                // ***login Bottun***//
                CustomButton(
                  title: 'Login',
                  onTap: () async {
                    if (Formkey.currentState!.validate()) {
                      isLoading= true;
                      setState(() {});
                    FirebaseAuth.instance;
                    try {
                      await loginUser();

                      // Navigator.pop(context);
                    } on FirebaseAuthException catch (ex) {
                      if (ex.code == 'weak-password') {
                        ShowSnackBar(context, 'weak-password');
                      } else if (ex.code == 'email-already-in-use') {
                        ShowSnackBar(context, 'Email Already Exists');
                      }
                    } catch (ex) {
                      print(ex);
                      ShowSnackBar(context, 'There was an Error!!');
                    }ShowSnackBar(context, 'Login Success');
                    Navigator.pushNamed(context, Home.id);
                    isLoading = false;
                    setState(() {  });
                  };
                  },
                ),

                SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' If you don`t have an account ?',
                      style: TextStyle(color: Colors.black),
                    ),

                    //.. BOTTUN REG  ..//
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RegistePage.id);
                      },
                      child: Text(
                        ' Register now',
                        style: TextStyle(color:Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> loginUser() async {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: password!);
  }
}
