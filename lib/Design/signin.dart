import 'package:flutter/material.dart';
import 'package:yellwflck/Design/signpass.dart';
import 'package:yellwflck/Design/signup.dart';

class sign_in extends StatefulWidget {
  @override
  _sign_inState createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  final Key = GlobalKey<FormState>();

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
                    "SignIn",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome Back!",
                        style: TextStyle(
                          fontSize: 30,
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Login back into you account",
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
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
                    "SignIn With Password",
                    style: TextStyle(fontSize: 15),
                  )),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => password()));
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
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 65,
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            textColor: Colors.white,
                            color: Colors.indigo[800],
                            child: Center(
                                child: Text(
                              "SignUp",
                              style: TextStyle(fontSize: 10),
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
                  SizedBox(
                    height: 8,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("Continue without Login",
                        style: TextStyle(fontSize: 10, color: Colors.black)),
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
