import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:proj1/Widgets/custom_button.dart';
import 'package:proj1/Widgets/custom_text_field.dart';
import 'package:proj1/Widgets/textfield_password.dart';
import 'package:proj1/constants.dart';
import 'package:proj1/helper/show_snack_bar.dart';
import 'package:proj1/pages/chat_page.dart';
import 'package:proj1/pages/login_page.dart';

class RegistePage extends StatefulWidget {
  RegistePage({super.key});
  static String id = 'RegistePage';

  @override
  State<RegistePage> createState() => _RegistePageState();
}

class _RegistePageState extends State<RegistePage> {
  String? email;

  String? password;

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
                  height: 130,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hello Chat',
                      style: TextStyle(fontSize: 32, color: Colors.white),
                    ),
                  ],
                ),

                SizedBox(
                  height: 15,
                ),

                Row(
                  children: [
                    Text(
                      'Register',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
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

                // fullName
                CustomFormTextField(
                  onChanged: (data) {
                    email = data;
                  },
                  hintText: 'Full Name',
                ),

                SizedBox(
                  height: 20,
                ),
                //  ..text field EMAIL..  //
                CustomFormTextField(
                  onChanged: (data) {
                    email = data;
                  },
                  hintText: 'Email',
                ),

                SizedBox(
                  height: 20,
                ),

                //  ..text field Password..  //
                // CustomTextField(
                //   onChanged: (data) {
                //     password = data;
                //   },
                //   hintText: 'password',
                // ),

                TextFormPassword(
                  onChanged: (data) {
                    password = data;
                  },
                  hintText: 'password',
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

                //  ..important ** BOTTUN ** REGSTER ..  //
                CustomButton(
                  onTap: () async {
                    if (Formkey.currentState!.validate()) {
                      isLoading = true;
                      setState(() {});
                      try {
                        // FirebaseAuth.instance;
                        await registerUser();
                        
                        // Navigator.pop(context);
                      } on FirebaseAuthException catch (ex) {
                        if (ex.code == 'weak-password') {
                          ShowSnackBar(context, 'weak-password');
                        } else if (ex.code == 'email-already-in-use') {
                          ShowSnackBar(context, 'Email Already Exists');
                        }
                      } catch (ex) {
                        ShowSnackBar(context, 'There was an Error!!');
                      } ShowSnackBar(context, 'Register Success');
                      Navigator.pop(context, LoginPage.id);
                      isLoading = false;
                      setState(() {});
                       
                    } else {}
                  },
                  
                  title: 'Register',
                ),

                SizedBox(
                  height: 10,
                ),

                // rowText///
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already Have Account',
                      style: TextStyle(color: Colors.black),
                    ),

                    //.. Button Log ..//
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        '  Login',
                        style: TextStyle(color: Colors.blue),
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

  // void ShowSnackBar(BuildContext context, String message) {
  //   ScaffoldMessenger.of(context)
  //       .showSnackBar(SnackBar(content: Text(message)));
  // }

  Future<void> registerUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
