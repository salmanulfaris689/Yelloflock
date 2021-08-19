import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yellwflck/Design/Payment.dart';

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  final key = GlobalKey<FormState>();
  String selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));
              },
              child: Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.black,
                size: 16,
              )),
          title: Text(
            "Address",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          backgroundColor: Colors.white,
        ),
        body: Form(
          key: key,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 30),
                child: Text(
                  "Name",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 45,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return "pleace enter your name";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white24),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20),
                child: Text(
                  "House name",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 45,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return "pleace enter your house name";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white24),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20),
                child: Text(
                  "Landmark",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 45,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return "pleace enter your landmark";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white24),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20),
                child: Text(
                  "City",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 45,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return "pleace enter your city";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white24),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20),
                child: Text(
                  "Delivery area",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 46,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Container(
                      //color: Colors.white,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54),
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white),

                      child: DropdownButtonFormField(
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                            ),
                          ),
                          value: selectedValue,
                          items: [
                            DropdownMenuItem(
                              child: Text(" Calicut"),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text(" Kochi"),
                              value: 2,
                            ),
                            DropdownMenuItem(child: Text(" Wayanad"), value: 3),
                            DropdownMenuItem(
                                child: Text(" Thrissur"), value: 4),
                          ],
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          }),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20),
                child: Text(
                  "Pincode",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 45,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "pleace enter your pincode";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white24),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20),
                child: Text(
                  "Mobile No:",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 45,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "pleace enter your mobile number";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white24),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Container(
                  child: RaisedButton(
                      color: Colors.indigo.shade900,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "SUBMIT",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        if (key.currentState.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Payment()));
                        }
                      }),
                  height: 40,
                  width: 120,
                ),
              )
            ],
          ),
        ));
  }
}
