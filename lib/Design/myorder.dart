import 'package:flutter/material.dart';
import 'package:yellwflck/Design/Homepage.dart';
import 'package:yellwflck/Design/bottomnav.dart';
import 'package:yellwflck/Design/tab_bar.dart';


class Myorders extends StatefulWidget {
  @override
  _MyordersState createState() => _MyordersState();
}

class _MyordersState extends State<Myorders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => Bottomnav()));
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
            )),
        title: Text(
          "My Orderss",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 16,
                        spreadRadius: 1.0)
                  ]),
              height: 150,
              width: 400,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 9),
                        child: Container(
                          child: Image.asset(
                            "asset/shamp1.png",
                            width: 70,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          children: [
                            Text(
                              "Shampoo",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text("148")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 95, bottom: 20),
                        child: Container(
                          child: Text("Repeat", style: TextStyle(fontSize: 11)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: Text(
                          "Delivered on            :",
                          style: TextStyle(fontSize: 10, color: Colors.black54),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "18-10-2020 : 10.00 AM",
                          style: TextStyle(fontSize: 11, color: Colors.black54),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 27, bottom: 18),
                        child: Text(
                          "YF-001-1829",
                          style: TextStyle(fontSize: 9, color: Colors.black54),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: Text(
                          "Payment Method    :",
                          style: TextStyle(fontSize: 11, color: Colors.black54),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "COD",
                          style: TextStyle(fontSize: 11, color: Colors.black54),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 16,
                        spreadRadius: 1.0)
                  ]),
              height: 150,
              width: 400,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 9),
                        child: Container(
                          child: Image.asset(
                            "asset/shamp1.png",
                            width: 70,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          children: [
                            Text(
                              "Shampoo",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text("148")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 95, bottom: 20),
                        child: Container(
                          child: Text("Repeat", style: TextStyle(fontSize: 11)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: Text(
                          "Delivered on            :",
                          style: TextStyle(fontSize: 10, color: Colors.black54),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "18-10-2020 : 10.00 AM",
                          style: TextStyle(fontSize: 11, color: Colors.black54),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 27, bottom: 18),
                        child: Text(
                          "YF-001-1829",
                          style: TextStyle(fontSize: 9, color: Colors.black54),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: Text(
                          "Payment Method    :",
                          style: TextStyle(fontSize: 11, color: Colors.black54),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "COD",
                          style: TextStyle(fontSize: 11, color: Colors.black54),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
