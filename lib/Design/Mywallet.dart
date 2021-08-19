
import 'package:flutter/material.dart';
import 'package:yellwflck/Design/Homepage.dart';
import 'package:yellwflck/Design/bottomnav.dart';
import 'package:yellwflck/Design/tab_bar.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'bottomnav.dart';
import 'tab_bar.dart';


class wallet extends StatefulWidget {
  @override
  _walletState createState() => _walletState();
}

class _walletState extends State<wallet> {
  final GlobalKey<ExpansionTileCardState> cardD = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
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
          "My Wallet",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body:
      Padding(
        padding: const EdgeInsets.only(top: 23, left: 20, right: 20),
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



      /* ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.lightBlueAccent.shade100),
                  height: 200,
                  width: 150,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Container(
                              child: Icon(Icons.add_box_outlined),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 68),
                            child: Container(
                              child: IconButton(
                                icon: fav
                                    ? Icon((Icons.favorite_border))
                                    : Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                onPressed: () {
                                  setState(() {
                                    if (fav) {
                                      fav = false;
                                    } else {
                                      fav = true;
                                    }
                                  });
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Center(
                            child: Image.asset(
                          'asset/shamp2.png',
                          height: 100,
                        )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Shampoo",
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "148",
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.lightBlueAccent.shade100),
                  height: 200,
                  width: 150,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Container(
                              child: Icon(Icons.add_box_outlined),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 68),
                            child: Container(
                              child: IconButton(
                                icon: favu
                                    ? Icon((Icons.favorite_border))
                                    : Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                onPressed: () {
                                  setState(() {
                                    if (favu) {
                                      favu = false;
                                    } else {
                                      favu = true;
                                    }
                                  });
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Center(
                            child: Image.asset(
                          'asset/shamp2.png',
                          height: 100,
                        )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Shampoo",
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "148",
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),*/
    );
  }
}

