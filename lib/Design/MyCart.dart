import 'package:flutter/material.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:yellwflck/Design/Payment.dart';
import 'package:yellwflck/Design/bottomnav.dart';

class Mycart extends StatefulWidget {
  @override
  _MycartState createState() => _MycartState();
}

class _MycartState extends State<Mycart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Bottomnav()));
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
            )),
        title: Text(
          "My Cart",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              height: 100,
              width: 400,
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
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      "asset/shamp1.png",
                      width: 70,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 50),
                    child: Column(
                      children: [
                        Text(
                          "Shampoo",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('\u{20B9}' + " 148")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100, top: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blueGrey.shade900),
                          child: Text(
                            "  -",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.shade100),
                          child: Text(
                            "  1",
                            style: TextStyle(color: Colors.black),
                          ),
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blueGrey.shade900),
                          child: Text(
                            "  +",
                            style: TextStyle(color: Colors.white),
                          ),
                          height: 17,
                          width: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 370, left: 25, right: 25),
            child: FDottedLine(
              color: Colors.black12,
              dottedLength: 15,
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Total :",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    /* Padding(
                      padding: const EdgeInsets.only(left: 250),
                      child: Text('\u{20B9}' + " 148"),
                    ),*/
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.63,
                    ),
                    Text('\u{20B9}' + " 148"),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
            child: RaisedButton(
                textColor: Colors.black,
                color: Colors.blueGrey.shade900,
                child: Center(
                    child: Text(
                  "Checkout",
                  style: TextStyle(color: Colors.white),
                )),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Payment()));
                }),
          )
        ],
      ),
    );
  }
}
