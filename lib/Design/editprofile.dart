import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'profile.dart';
//import 'package:yellowflock/library/address.dart';

class Edit extends StatefulWidget {
  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  final key=GlobalKey<FormState> ();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          leading: GestureDetector(
              onTap: (){
            Navigator.pop(context, MaterialPageRoute(builder: (contect)=>Profile()));
              },
              child: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,size: 16,)),
          title: Text("Edit profile",style: TextStyle(color: Colors.black,fontSize: 16),),
          backgroundColor: Colors.white,),

        body:
        Form(
          key: key,
          child: ListView(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 25,top: 30),
                child: Text("Name",style: TextStyle(color: Colors.black),),
              ),
              SizedBox(height: 5,),

              Container(
                height: 45,
                child: Padding(

                  padding: const EdgeInsets.only(left: 20,right: 20,),
                  child: TextFormField(
                    validator: (value){
                      if(value.isEmpty){
                        return "pleace enter your name";
                      }
                      return null;
                    },
                    decoration: InputDecoration(

                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
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
                padding: const EdgeInsets.only(left: 25,top: 20),
                child: Text("House name",style: TextStyle(color: Colors.black),),
              ),
              SizedBox(height: 5,),

              Container(
                height: 45,
                child: Padding(

                  padding: const EdgeInsets.only(left: 20,right: 20,),
                  child: TextFormField(
                    validator: (value){
                      if(value.isEmpty){
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
                padding: const EdgeInsets.only(left: 25,top: 20),
                child: Text("Mobile No:",style: TextStyle(color: Colors.black),),
              ),
              SizedBox(height: 5,),

              Container(
                height: 45,
                child: Padding(

                  padding: const EdgeInsets.only(left: 20,right: 20,),
                  child: TextFormField(
                    validator: (value){
                      if(value.isEmpty){
                        return "pleace enter your mobile number";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
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
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Text("SUBMIT",style: TextStyle(color: Colors.white),),
                      onPressed: (){
                        if(key.currentState.validate())

                        {
                          Navigator.pop(context, MaterialPageRoute(builder: (context)=>Profile()));
                        }

                      }

                  ),
                  height: 40,width: 120,

                ),
              )



            ],
          ),
        )



    );
  }
}