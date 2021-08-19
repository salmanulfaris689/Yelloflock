import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yellwflck/Design/bottomnav.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final key=GlobalKey<FormState>();
  FocusNode pin2FocuNode;
  FocusNode pin3FocuNode;
  FocusNode pin4FocuNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2FocuNode = FocusNode();
    pin3FocuNode = FocusNode();
    pin4FocuNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pin2FocuNode = FocusNode();
    pin3FocuNode = FocusNode();
    pin4FocuNode = FocusNode();
    super.dispose();
  }

  void nextField({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Enter OTP",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 35,
              ),
              Icon(
                Icons.message,
                size: 35,
              ),
              SizedBox(
                height: 50,
              ),
              Form(
                key: key,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: TextFormField(
                        validator: (value){
                          if(value.isEmpty){
                            return "*";
                          }
                          else{
                            return null;
                          }
                        },
                        textAlign: TextAlign.center,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
                        autofocus: true,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 30),
                          border: InputBorder.none,
                          hintText: "_",
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onChanged: (value) {
                          nextField(value: value, focusNode: pin2FocuNode);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: TextFormField(
                        validator: (value){
                          if(value.isEmpty){
                            return "*";
                          }
                          else{
                            return null;
                          }
                        },
                        textAlign: TextAlign.center,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
                        focusNode: pin2FocuNode,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 30),
                          border: InputBorder.none,
                          hintText: "_",
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onChanged: (value) {
                          nextField(value: value, focusNode: pin3FocuNode);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: TextFormField(
                        validator: (value){
                          if(value.isEmpty){
                            return "*";
                          }
                          else{
                            return null;
                          }
                        },
                        textAlign: TextAlign.center,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
                        focusNode: pin3FocuNode,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 30),
                          border: InputBorder.none,
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: "_",
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onChanged: (value) {
                          nextField(value: value, focusNode: pin4FocuNode);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: TextFormField(
                        validator: (value){
                          if(value.isEmpty){
                            return "*";
                          }
                          else{
                            return null;
                          }
                        },
                        textAlign: TextAlign.center,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
                        focusNode: pin4FocuNode,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 30),
                          border: InputBorder.none,
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: "_",
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                new BorderSide(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("This Code will experied in"),
                  TweenAnimationBuilder(
                    tween: Tween(begin: 30.0, end: 0),
                    duration: Duration(seconds: 30),
                    builder: (context, value, child) => Text(
                      "00:${value.toInt()}",
                      style: TextStyle(color: Colors.grey),
                    ),
                    onEnd: () {},
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Container(
                  height: 44,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      textColor: Colors.white,
                      color: Colors.indigo[900],
                      child: Center(
                          child: Text(
                        "Verify",
                        style: TextStyle(fontSize: 15),
                      )),
                      onPressed: () {

                        if(key.currentState.validate())
                          {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bottomnav()));
                          }
                      }),
                ),
              ),
              Container(
                child: Center(child: Text("")),
              )
            ],
          ),
        )
      ],
    ));
  }
}
