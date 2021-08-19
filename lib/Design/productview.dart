import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:yellwflck/Design/bottomnav.dart';
import 'package:yellwflck/Design/category.dart';
class Productview extends StatefulWidget {
  @override
  _ProductviewState createState() => _ProductviewState();
}

class _ProductviewState extends State<Productview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],

      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 40,top: 30),
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.close_sharp), onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Bottomnav()));
                },),
                SizedBox(width: 220,),
                IconButton(icon: Icon(Icons.send_outlined ), )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),

                      image: DecorationImage(
                        image:  AssetImage("asset/categoryimg/klar2.png",),
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),

                      image: DecorationImage(
                        image:  AssetImage("asset/categoryimg/shampoo.png",),
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),

                      image: DecorationImage(
                        image:  AssetImage("asset/categoryimg/shampoo.png"),
                      )
                  ),
                ),

              ],
              options: CarouselOptions(
                height: 250.0,

                enlargeCenterPage: true,
                autoPlay: false,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              height: 800,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text("Sofa",style: TextStyle(fontSize: 20,color: Colors.grey),),

                        Text('\u{20B9}'+" 148",style: TextStyle(fontSize: 20,color: Colors.black),)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text("Instock",style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.bold),),
                        Divider(thickness: 2,color: Colors.red,),

                      ],
                    ),

                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text("Check Delivery",style: TextStyle(fontSize: 16,color: Colors.black),)
                      ],
                    ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,bottom: 20,right: 10),
                        child: TextFormField(

                          decoration: InputDecoration(
                            hintText: "Enter Pincode",
                            suffixIcon: Container(
                              height: 30,
                              width: 100,

                              color: Colors.blue,
                              child: Center(child: Text("Procced",style: TextStyle(color: Colors.white),)),
                            ),



                          ),
                        ),
                      )
                    ],
                  ),
                  /*   Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:30,right: 30),
                        child: TextField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(fontSize: 13),
                            hintText: "picode",
                            labelStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(

                              borderSide: new BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(20),

                            ),
                          ),
                        ),
                      )
                    ],
                  ),*/

                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(1),
                          child: Container(
                            width: 350,
                            decoration:
                            BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(10),
                                color: Colors.white,boxShadow:[BoxShadow(
                                    color:Colors.black12,blurRadius: 16,spreadRadius: 1.0 )]),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text("created a simple text field with input decoration \n"
                                  " and Outlineboraderinput.when  I type on that text\nfield I"
                                  "text field with input decoration \n"
                                  "text field with input decoration \n"
                                  "text field with input decoration \n"
                                  "to change the border color. below link, you\n my work. what "
                                  " that" " blue border to\n white you can see "
                                  "created a simple text field with input  \n"
                                  " and Outlineboraderinput.when  I type on that text\nfield I"
                                  "to change the border color. below link, you\n my work. what I want is change"
                                  " that" " blue border to\n"
                                  "created a simple text field with input decoration \n",style: TextStyle(
                                  fontSize: 12
                              ),),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text("Recomended products",style: TextStyle(fontSize: 20),)
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  /* Column(
                    children: [
                      Container(

                        child: ListView(

                          shrinkWrap: true,
                          children: <Widget>[

                            MyList()
                          ],
                        ),
                      ),

                    ],
                  ),*/
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 170,
                          width: MediaQuery.of(context).size.width,
                          child: ListView(
                            // shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: ScrollPhysics(),
                            children:[

                              Container(
                                width: 100,
                                child: Column(
                                  children: [
                                    Image.asset("asset/shamp1.png",),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Shamboo "),
                                          Icon(Icons.favorite_border,size: 15,color: Colors.black45,)
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 18),
                                          child: Text("148"),
                                        ),
                                        SizedBox(width: 10,),
                                        Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Text("148"),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),


                              Container(
                                height: 150,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.zero,
                                ),
                                child: Column(
                                  children: [
                                    Image.asset("asset/KLAR.jpg",height: 100,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Shamboo "),
                                          Icon(Icons.favorite_border,size: 15,color: Colors.black45,),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 18),
                                          child: Text("148"),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("148"),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),


                              Container(
                                height: 150,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.zero,
                                ),
                                child: Column(
                                  children: [
                                    Image.asset("asset/shamp1.png",height: 100,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text("Shamboo "),
                                          Icon(Icons.favorite_border,size: 15,color: Colors.black45,),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 18),
                                          child: Text("148"),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("148"),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),


                              Container(
                                height: 150,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.zero,
                                ),
                                child: Column(
                                  children: [
                                    Image.asset("asset/KLAR.jpg",height: 100,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text("soap"),
                                          Icon(Icons.favorite_border,size: 15,color: Colors.black45,),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 18),
                                          child: Text("148"),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("148"),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),


                              Container(
                                height: 150,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.zero,
                                ),
                                child: Column(
                                  children: [
                                    Image.asset("asset/shamp1.png",height: 100,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text("Shamboo "),
                                          Icon(Icons.favorite_border,color: Colors.black45,size: 15,)
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 18),
                                          child: Text("148"),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("148"),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30,),
                        child: Container(

                          child: Center(child: Text("Add to Card",style: TextStyle(fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),)),
                          color: Colors.blue,
                          height: 50,
                          width: 320,
                        ),
                      )
                    ],
                  ),



                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}

