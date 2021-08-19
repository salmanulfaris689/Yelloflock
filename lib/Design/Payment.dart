import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yellwflck/Design/MyCart.dart';
import 'package:yellwflck/Design/address.dart';
import 'package:yellwflck/Design/ordercomplt.dart';
class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int selectfirst=0;
  int selectsecond=0;
  int selectthird=0;
  bool favu=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Mycart()));
            },
            child: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,)),
        title: Text("Payment",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,),
      body: ListView(
        children: [
          /*Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Container(
              height: 140,width: MediaQuery.of(context).size.width,
              decoration:
              BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(10),color: Colors.white,
                  boxShadow:[BoxShadow(color:Colors.black12,blurRadius: 16,spreadRadius: 1.0 )]),
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 250,top: 7),
                    child: Text("Payment Method",style: TextStyle(fontSize: 10,color: Colors.grey),),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Cash On Delivery"),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.53,),
                      Transform.scale(
                        scale: 0.70,
                        child:
                        Radio(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                          value: selectsecond,
                          groupValue: 1,
                          onChanged: (
                              value){
                            setState(() {
                              selectfirst=0;
                              selectsecond=1;
                              selectthird=0;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Swipe On Delivery"),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.52,),
                      Transform.scale(
                        scale: 0.70,
                        child:
                        Radio(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                          value: selectfirst,
                          groupValue: 1,
                          onChanged: (
                              value){
                            setState(() {
                              selectfirst=1;
                              selectsecond=0;
                              selectthird=0;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Online Payment"),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.55,),
                      Transform.scale(
                        scale: 0.70,
                        child:
                        Radio(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                          value: selectthird,
                          groupValue: 1,
                          onChanged: (
                              value){
                            setState(() {
                              selectfirst=0;
                              selectsecond=0;
                              selectthird=1;
                            });
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),*/
          Container(
            decoration:
            BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(10),color: Colors.white,
                boxShadow:[BoxShadow(color:Colors.black12,blurRadius: 16,spreadRadius: 1.0 )]),
            child: Row(
             // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Payment Method",style: TextStyle(fontSize: 12,color: Colors.grey),),
                        ),
                        SizedBox(height: 10,),
                        Text("Cash on delivery"),
                        SizedBox(height: 20,),
                        Text("Swipe Payment"),
                        SizedBox(height: 20,),

                      ],

                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width *0.57,),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      Transform.scale(
                        scale: 0.70,
                        child:
                        Radio(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                          value: selectfirst,
                          groupValue: 1,
                          onChanged: (
                              value){
                            setState(() {
                              selectfirst=1;
                              selectsecond=0;
                              selectthird=0;
                            });
                          },
                        ),
                      ),
                      Transform.scale(
                        scale: 0.70,
                        child: Radio(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                          value: selectsecond,
                          groupValue: 1,
                          onChanged: (
                              value){
                            setState(() {
                              selectfirst=0;
                              selectsecond=1;
                              selectthird=0;
                            });
                          },
                        ),
                      ),



                    ],
                  ),
                ),
              ],
            ),
          ),
          /*Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 131,width: 400,
              decoration:
              BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(10),color: Colors.white,
                  boxShadow:[BoxShadow(color:Colors.black12,blurRadius: 16,spreadRadius: 1.0 )]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 249,top: 5),
                    child: Text("Payment Method",style: TextStyle(fontSize: 10,color: Colors.grey),),
                  ),
                  SizedBox(
                    height: 20,
                    child: ListTile(
                      trailing: Transform.scale(
                        scale: 0.70,
                        child: Radio(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                          value: selectfirst,
                          groupValue: 1,
                          onChanged: (
                              value){
                            setState(() {
                              selectfirst=1;
                              selectsecond=0;
                              selectthird=0;
                            });
                          },
                        ),
                      ),
                      title: Text("Cash on delivery",style: TextStyle(fontSize: 13)),
                    ),
                  ),
                  SizedBox(height: 9,),
                  SizedBox(
                    height: 20,
                    child: ListTile(
                      trailing: Transform.scale(
                        scale: 0.70,
                        child: Radio(

                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          value: selectsecond,
                          groupValue: 1,
                          onChanged: (value){
                            setState(() {
                              selectsecond=1;
                              selectfirst=0;
                              selectthird=0;
                            });
                          },
                        ),
                      ),
                      title: Text("Swipe on delivery",style: TextStyle(fontSize: 13)),
                    ),
                  ),
                   SizedBox(height: 9,),
                  SizedBox(
                    height: 20,
                    child: ListTile(
                      trailing: Transform.scale(
                        scale: 0.70,
                        child: Radio(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                          value: selectthird,
                          groupValue: 1,
                          onChanged: (value){
                            setState(() {
                              selectthird=1;
                              selectsecond=0;
                              selectfirst=0;
                            });
                          },
                        ),
                      ),
                      title: Text("Online payment",style: TextStyle(fontSize: 13)),

                    ),
                  ),

                ],
              ),
            ),
          ),*/
          SizedBox(height: 5,),
          Container(
            height: 90,
            decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(10),color: Colors.white,
                boxShadow:[BoxShadow(color:Colors.black12,blurRadius: 16,spreadRadius: 1.0 )]) ,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 7),
                  child: Row(
                    children: [
                      Text("WelletBalance,",style: TextStyle(fontSize: 12),),
                      SizedBox(width: 10,),
                      Text("0.0",style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Container(
                      height: 30,width: 240,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter  Amount",
                            hintStyle: TextStyle(fontSize: 10,height: 3),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 110,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5,bottom: 4),
                        child: RaisedButton(
                            textColor: Colors.white,
                            color: Colors.indigoAccent.shade700,
                            child: Center(child: Text("Redeem")),

                            onPressed: (){}),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 5,),

          Container(
            decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(10),color: Colors.white,
                boxShadow:[BoxShadow(color:Colors.black12,blurRadius: 16,spreadRadius: 1.0 )]) ,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 7),
                  child: Row(
                    children: [
                      Text("Radeem Coupon",style: TextStyle(fontSize: 12),),

                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Container(
                      height: 30,width: 240,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Enter Coupon Code",
                              hintStyle: TextStyle(fontSize: 8,height: 3),
                              border: OutlineInputBorder()
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 110,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5,bottom: 5),
                        child: RaisedButton(
                            textColor: Colors.white,
                            color: Colors.indigoAccent.shade700,
                            child: Center(child: Text("Apply")),

                            onPressed: (){}),
                      ),
                    )
                  ],
                )
              ],
            ),

          ),
          SizedBox(height: 6,),
          SizedBox(height: 6,),
          Container(

            height: 50,
            decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(10),color: Colors.white,
                boxShadow:[BoxShadow(color:Colors.black12,blurRadius: 16,spreadRadius: 1.0 )]) ,

            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 9),
                      child: Text("To be delivere in Carry bags",style: TextStyle(fontSize: 10,),),
                    ),
                    SizedBox(height: 4,),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text("(Rs 20/ carry bag)",style: TextStyle(fontSize: 9,color: Colors.grey),),
                    )
                  ],
                ),
                SizedBox(width: 170,),
                Container(
                  child: IconButton(icon: favu?Icon((Icons.check_box_outlined)) :Icon(Icons.check_box,color: Colors.indigo.shade700,),
                    onPressed:() {
                      setState(() {
                        if (favu){
                          favu=false;
                        }
                        else{
                          favu=true;
                        }
                      });
                    },),
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Container(height: 100,width: 200,
            decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(10),color: Colors.white,
                boxShadow:[BoxShadow(color:Colors.black12,blurRadius: 16,spreadRadius: 1.0 )]) ,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18,top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Delivery Address",style: TextStyle(fontSize: 12),),
                      SizedBox(height: 7,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text("johne",style: TextStyle(fontSize: 9,color: Colors.grey),),
                          Text("House",style: TextStyle(fontSize: 9,color: Colors.grey)),
                          Text("Calicut",style: TextStyle(fontSize: 9,color: Colors.grey)),
                          Text("673000",style: TextStyle(fontSize: 9,color: Colors.grey)),
                          Text("+91 789568636",style: TextStyle(fontSize: 9,color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 137,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 28),
                  child: Container(
                    width: 110,height: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 9,bottom: 14),
                      child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.indigoAccent.shade700,
                          child: Center(child: Text("Edit Address",style: TextStyle(fontSize: 9),)),

                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Address()));
                          }),
                    ),
                  ),
                )
              ],
            ),


          ),
          SizedBox(height: 10,),
          Container(height: 170,width: 200,
            decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(10),color: Colors.white,
                boxShadow:[BoxShadow(color:Colors.black12,blurRadius: 16,spreadRadius: 1.0 )]) ,

            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 6,bottom: 9),
                  child: Container(child: Text("Payment Details"),),
                ),
                SizedBox(height: 10,),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Total :",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 267),
                      child: Text("148"),
                    ),
                  ],
                ),
                Divider(thickness: 1,height: 5,color: Colors.grey.shade100,),
                SizedBox(height: 6,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Delivery Charge :",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 220),
                      child: Text("12"),
                    ),
                  ],
                ),
                Divider(thickness: 1,height: 5,color: Colors.grey.shade100,),
                SizedBox(height: 6,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Carry bag Chargee :",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 199),
                      child: Text("40"),
                    ),
                  ],
                ),
                Divider(thickness: 1,height: 5,color: Colors.grey.shade100,),
                SizedBox(height: 6,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Total :",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 266),
                      child: Text("200"),
                    ),
                  ],
                ),
                SizedBox(height: 9,),

                Container(
                  margin: EdgeInsets.only(left:250),
                  child: Text("You Save 15.00",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                )
              ],
            ),

          ),
          SizedBox(height: 5,),
          Container(
            height: 60,width: 200,
            decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(10),color: Colors.white,
                boxShadow:[BoxShadow(color:Colors.black12,blurRadius: 16,spreadRadius: 1.0 )]),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(child: Text("Total 200",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),),
                ),
                SizedBox(width:MediaQuery.of(context).size.width*0.41,),
                Container(
                    width: 150,
                    child:Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 20),
                      child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.indigo.shade900,
                          child: Row(
                            children: [
                              Text("Proceed"),
                              SizedBox(width: 25,),
                              CircleAvatar(
                                child: Icon(Icons.arrow_forward_ios_sharp,size: 10,),backgroundColor: Colors.white,radius: 10,)
                            ],
                          ),
                          onPressed: () {
                            if (selectfirst == 0&& selectsecond == 0 && selectthird == 0)
                            {
                              showDialog(context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Container

                                        (decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4), color: Colors
                                          .white,),
                                          child: Center(child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text("Please Selected Payment Option", style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10),),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 16),
                                                child: Icon(Icons.warning, color: Colors.black,),
                                              ),
                                            ],
                                          )
                                          )
                                      ),
                                    );
                                  }

                              );

                            }
                            else{

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Order()));
                            }
                          }
                      ),
                    )
                ),


              ],
            ),
          ),


        ],
      ),
    );
  }
}
