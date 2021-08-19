import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yellwflck/Design/category.dart';
import 'package:yellwflck/Design/productview.dart';

class subcategory extends StatefulWidget {
  String subcatname;
  subcategory({Key key, this.subcatname});
  @override
  _subcategoryState createState() => _subcategoryState();
}

class _subcategoryState extends State<subcategory> {
  bool fav = true;
  final mobilelist = ["apple", "samsung", "redmi", "realme"];
  final sofalist = ["black", "blue", "white", "orange"];

  int ssindex = 0;

  final mobileimg = [
    "asset/categoryimg/klar2.png",
    "asset/categoryimg/klar2.png",
    "asset/categoryimg/klar2.png",
    "asset/categoryimg/klar2.png",
  ];
  final sofaimg = [
    "asset/categoryimg/shampoo.png",
    "asset/categoryimg/shampoo.png",
    "asset/categoryimg/shampoo.png",
    "asset/categoryimg/shampoo.png",
  ];

  final displayimg = [];
  final displaytext = [];

  @override
  Widget build(BuildContext context) {
    if (widget.subcatname == "KLAR") {
      for (int i = 0; i < mobileimg.length; i++) {
        displayimg.add(mobileimg[i]);
      }
    } else if (widget.subcatname == "Shampoo") {
      for (int i = 0; i < sofaimg.length; i++) {
        displayimg.add(sofaimg[i]);
      }
    }

    if (widget.subcatname == "KLAR") {
      for (int i = 0; i < mobilelist.length; i++) {
        displaytext.add(mobilelist[i]);
      }
    } else if (widget.subcatname == "Shampoo") {
      for (int i = 0; i < sofalist.length; i++) {
        displaytext.add(sofalist[i]);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.subcatname),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  /*IconButton(
                    icon: Icon(Icons.arrow_back_ios_sharp),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => category()));
                    },
                  ),*/
                  SizedBox(
                    height: 30,
                    width: 250,
                  ),
                  Text(
                    widget.subcatname,
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  Text.rich(TextSpan(
                      text: " bath oral & care ",
                      style: TextStyle(color: Colors.black))
                  )
                ],
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GridView.builder(
                    itemCount: sofalist.length,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 10,
                        crossAxisCount: 2,
                        mainAxisSpacing: 1,
                        childAspectRatio: 0.7),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              height: 260,
                              color: Colors.lightBlueAccent[100],
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Productview()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.add_box_outlined),
                                          IconButton(
                                            icon: (ssindex == index)
                                                ? Icon(
                                                    (Icons.favorite),
                                                    color: Colors.red,
                                                  )
                                                : Icon(Icons.favorite_border),
                                            onPressed: () {
                                              setState(() {
                                                if (fav) {
                                                  fav = false;
                                                  ssindex = index;
                                                } else {
                                                  fav = true;
                                                }
                                              });
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                    Center(
                                        child: Image.asset(
                                      displayimg[index],
                                      width: 100,
                                      height: 100,
                                    )),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 56, left: 20, right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("${displaytext[index]}"),
                                          Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Text('\u{20B9}' + "13,00"),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              )
            ],
          )
        ],
      ),
    );
  }
}
