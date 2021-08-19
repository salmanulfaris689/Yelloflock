import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:yellwflck/Design/signin.dart';
import 'package:yellwflck/Design/signotp.dart';
import 'package:yellwflck/Models/signupClass.dart';
import 'package:http/http.dart' as http;

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  final Key = GlobalKey<FormState>();

  TextEditingController namecontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController mobilecontroller = new TextEditingController();
  TextEditingController passcontroller = new TextEditingController();
  TextEditingController confmpasscontroller = new TextEditingController();

  void login(BuildContext context) async {
    var client = http.Client();

    String name = namecontroller.text;
    String email = emailcontroller.text;
    String mobile = mobilecontroller.text;
    String pass = passcontroller.text;
    /*String confmpass = confmpasscontroller.text;*/

    var jsonresponse = await client
        .post("https://ecom.cybaze.com/yellowflock-api/sign_up", body: {
      "name": name,
      "email": email,
      "mobile": mobile,
      "password": pass,
      "fcm_id": "545455asdas",
      "is_android": "1",
    });

    if (jsonresponse.statusCode == 200) {
      var response = Signupauth.fromJson(jsonDecode(jsonresponse.body));

      if (response.error) {
        print('login failed');
      } else {
        print('login success');
        /*String name=response.data.name;*/ ///passing name into home page
        Navigator.push(context, MaterialPageRoute(builder: (context) => Otp()));
      }
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: Key,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 80, right: 80),
              child: Container(
                width: 80,
                child: Image.asset(
                  "asset/logo.png",
                  width: 80,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Center(
                child: Container(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Container(
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(("Name")),
                    Container(
                      height: 40,
                      child: TextFormField(
                        controller: namecontroller,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Enter Your Name";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            fontSize: 10,
                          ),
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mobile Number"),
                    Container(
                      height: 40,
                      child: TextFormField(
                        controller: mobilecontroller,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Enter Mobile Number";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 13),
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(("Email")),
                    Container(
                      height: 40,
                      child: TextFormField(
                        controller: emailcontroller,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Enter Your Email";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 13),
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Password"),
                    Container(
                      height: 40,
                      child: TextFormField(
                        controller: passcontroller,
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Enter Your Password";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 13),
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Conform Password"),
                    Container(
                      height: 40,
                      child: TextFormField(
                        controller: confmpasscontroller,
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Enter Conform Password";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 13),
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  textColor: Colors.white,
                  color: Colors.indigo[800],
                  child: Center(
                      child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 15),
                  )),
                  onPressed: () {
                    if (Key.currentState.validate()) {
                      login(context);
                    }
                  }),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Text(
                          "Already have an account? ",
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 60,
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            textColor: Colors.white,
                            color: Colors.indigo[800],
                            child: Center(
                                child: Text(
                              "SignIn",
                              style: TextStyle(fontSize: 9),
                            )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => sign_in()));
                            }),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
