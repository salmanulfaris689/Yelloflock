import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yellwflck/Design/bottomnav.dart';
import 'package:yellwflck/Design/signup.dart';
import 'package:yellwflck/Models/signpassClass.dart';
import 'package:http/http.dart'as http;

class password extends StatefulWidget {
  @override
  _passwordState createState() => _passwordState();
}

class _passwordState extends State<password> {

  final Key = GlobalKey<FormState>();

  TextEditingController mobilecontroller=new TextEditingController();
  TextEditingController passcontroller=new TextEditingController();


  void login(BuildContext context) async{

    var client = http.Client();

    String mobile=mobilecontroller.text;
    String pass=passcontroller.text;

    var jsonresponse= await client.post("https://ecom.cybaze.com/yellowflock-api/signin_password",
        body: {
          "mobile":mobile,
          "password":pass,
        }
    );

    if(jsonresponse.statusCode==200)
    {
      var response = await Authentication.fromJson(jsonDecode(jsonresponse.body));

      if(response.error)
      {
        print('login failed');
      }
      else{
        print('login success');

        String name=response.data.name; ///passing name into home page

        SharedPreferences prefs = await  SharedPreferences.getInstance();
        prefs.setString('name',name);

        print(prefs.getString('name'));

        /*Navigator.push(context, MaterialPageRoute(builder: (context)=>Tab_bar()));*/

      Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottomnav()));

      }
    }
    else
    {
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
              padding: const EdgeInsets.only(top: 110, left: 70, right: 70),
              child: Container(
                width: 90,
                child: Image.asset("asset/logo.png"),
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
                    "Signin",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(("Mobile Number")),
                    TextFormField(
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
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Password"),
                    TextFormField(
                      obscureText: true,
                      controller: passcontroller,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter Password";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 13),
                        labelStyle: TextStyle(color: Colors.grey),
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
                    "Signin",
                    style: TextStyle(fontSize: 15),
                  )),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottomnav()));
                  ///  API Calling

                    /*if (Key.currentState.validate()) {

                      login(context);

                    }*/
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
                          "Don't you have an account? ",
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
                              "Signup",
                              style: TextStyle(fontSize: 9),
                            )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => signup()));
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



