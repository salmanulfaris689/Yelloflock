import 'package:flutter/material.dart';
import 'package:yellwflck/Design/Homepage.dart';
import 'package:yellwflck/Design/Payment.dart';
import 'package:yellwflck/Design/bottomnav.dart';
import 'package:yellwflck/Design/tab_bar.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Payment()));
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Order Complete",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Container(
                    height: 350,
                    width: 500,
                    child: Center(
                        child: Image.asset(
                      "asset/orders.png",
                      width: 500,
                      height: 350,
                    ))),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "Your Order is placed",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Container(
                      height: 50,
                      width: 200,
                      child: Text(
                        "It is now very easy to search the best quality among all the products on the internet!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.grey),
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 28),
                child: Container(
                  width: 290,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 9, bottom: 14),
                    child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.indigo.shade900,
                        child: Center(
                            child: Text(
                          "Continue Shopping",
                          style: TextStyle(fontSize: 13),
                        )),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Bottomnav()));
                        }),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
