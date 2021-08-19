
/*import 'package:expansion_tile_card/expansion_tile_card.dart';*/
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:yellwflck/Design/MyCart.dart';
import 'package:yellwflck/Design/editprofile.dart';
import 'package:yellwflck/Design/favourite.dart';
import 'package:yellwflck/Design/myorder.dart';

import 'bottomnav.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  final GlobalKey<ExpansionTileCardState> cardD = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 35,
            ),
            child: Container(
              child: Center(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              "Reghana",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 225,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (cotext) => Edit()));
                              },
                              child: Text(
                                "Edit",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          "Playam,kozhikode,",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 2),
                        child: Text(
                          "kerala, 673000",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 8),
                        child: Text(
                          "+91 7012553353",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.indigo.shade900,
                            blurRadius: 1,
                            spreadRadius: 10)
                      ]),
                  height: 109,
                  width: 330,
                ),
              ),
              height: 210,
              width: MediaQuery.of(context).size.width,
              color: Colors.indigo[900],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 10, spreadRadius: 1)
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child:ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Myorders()));
                  },

                  trailing: Icon(Icons.arrow_forward_ios_sharp,size: 18,),


                  title: Text(
                    'My Order',
                    style: TextStyle(fontSize: 17),
                  ),

                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 30, right: 30),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 10, spreadRadius: 1)
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Favourite()));
                  },
                  trailing: Icon(Icons.arrow_forward_ios_sharp,size: 18,),



                  title: Text(
                    'My Favourites',
                    style: TextStyle(fontSize: 17),
                  ),

                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 30, right: 30),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 10, spreadRadius: 1)
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Mycart()));
                  },
                  trailing: Icon(Icons.arrow_forward_ios_sharp,size: 18,),



                  title: Text(
                    'My Cart',
                    style: TextStyle(fontSize: 17),
                  ),

                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 30, right: 30),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 10, spreadRadius: 1),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: ExpansionTile(


                  backgroundColor: Colors.indigo.shade900,
                  initiallyExpanded:true,
                  key: cardD,
                  title: Text(
                    'My Wallet',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.account_balance_wallet_outlined,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Current Balance",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 240, top: 20, bottom: 8),
                      child: Row(
                        children: [
                          Text(
                            "Rs 0.00",
                            style: TextStyle(fontSize: 23, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
