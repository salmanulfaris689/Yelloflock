import 'package:flutter/material.dart';
import 'package:yellwflck/Design/Homepage.dart';
import 'package:yellwflck/Design/bottomnav.dart';
import 'package:yellwflck/Design/tab_bar.dart';


class Favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  bool fav = true;

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
          "My Favourites",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
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
                          'asset/shamp1.png',
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
                              '\u{20B9}' + " 148",
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
      ),
    );
  }
}
