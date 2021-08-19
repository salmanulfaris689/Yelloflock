import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPressed = true;
  bool isPressed2 = true;
  bool isHighlighted = true;
  @override
  Widget build(BuildContext context) {
    ///Carousel

    Widget imageSliderCarousel = Container(
      height: 220,
      width: MediaQuery.of(context).size.width,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          Image.asset(
            "asset/banner.png",
            fit: BoxFit.fill,
          ),
          Image.asset(
            "asset/offer3.jfif",
            fit: BoxFit.fill,
          ),
        ],
        autoplay: true,
        indicatorBgPadding: 0,
        dotBgColor: Colors.white,
        dotColor: Colors.black,
        dotSize: 5.0,
        showIndicator: true,
        dotIncreasedColor: Colors.yellow,
        dotSpacing: 8,
      ),
    );

    return ListView(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      children: [
        /// Category Bar

        ///Banner image

        Column(
          children: <Widget>[
            imageSliderCarousel,
          ],
        ),

        ///Top Deals

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              children: [
                Icon(
                  Icons.circle,
                  color: Colors.blue[50],
                ),
                Text(
                  " Top Deals",
                  style: TextStyle(fontSize: 22, color: Colors.black87),
                )
              ],
            ),
          ),
        ),

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
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            "asset/shmpoo.jfif",
                            height: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Shamboo "),
                                Icon(
                                  Icons.favorite_border,
                                  size: 15,
                                  color: Colors.black45,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text('\u{20B9}' + "148"),
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
                          Image.asset(
                            "asset/KLAR.jpg",
                            height: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("KLAR "),
                                Icon(
                                  Icons.favorite_border,
                                  size: 15,
                                  color: Colors.black45,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text('\u{20B9}' + "148"),
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
                          Image.asset(
                            "asset/shmpoo.jfif",
                            height: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Shamboo "),
                                Icon(
                                  Icons.favorite_border,
                                  size: 15,
                                  color: Colors.black45,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text('\u{20B9}' + "148"),
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
                          Image.asset(
                            "asset/KLAR.jpg",
                            height: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("KLAR "),
                                Icon(
                                  Icons.favorite_border,
                                  size: 15,
                                  color: Colors.black45,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text('\u{20B9}' + "148"),
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
                          Image.asset(
                            "asset/shmpoo.jfif",
                            height: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Shamboo "),
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.black45,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text('\u{20B9}' + "148"),
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

        /// Card

        Row(
          children: [
            Expanded(
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child:
                          Image.asset('asset/card (2).png', fit: BoxFit.cover),
                    ),
                  )),
            ),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 170,
                  width: 98,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('asset/card 3.png', fit: BoxFit.fill),
                  ),
                )),
          ],
        ),

        /// Offer

        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Container(
            //height: 150,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'asset/offer4.png',
              fit: BoxFit.fill,
            ),
          ),
        ),

        /// Combo Offer

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              children: [
                Icon(Icons.circle, color: Colors.blue[50]),
                Text(
                  " Combo Offer",
                  style: TextStyle(fontSize: 22, color: Colors.black87),
                )
              ],
            ),
          ),
        ),

        ///Product

        Container(
          color: Colors.grey[200],
          height: 170,
          width: MediaQuery.of(context).size.width,
          child: ListView(
              // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: ScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 5, right: 3, top: 5, bottom: 13),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 120,
                      width: 260,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10,
                                spreadRadius: 1)
                          ]),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Image.asset('asset/pepsi.jpg'),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 35,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Pepsi 3l"),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text("buy 1 get"),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text("Cocacola 750 ml"),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text("Rs: 148"),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Positioned(
                              right: 0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(3),
                                child: InkWell(
                                  highlightColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  onHighlightChanged: (value) {
                                    setState(() {
                                      isHighlighted = !isHighlighted;
                                    });
                                  },
                                  onTap: () {
                                    setState(() {
                                      isPressed2 = !isPressed2;
                                    });
                                  },
                                  child: AnimatedContainer(
                                      margin: EdgeInsets.all(
                                          isHighlighted ? 0 : 2.5),
                                      height: isHighlighted ? 40 : 50,
                                      width: isHighlighted ? 40 : 45,
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      duration: Duration(milliseconds: 300),
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.2),
                                            blurRadius: 20,
                                            offset: Offset(5, 10),
                                          ),
                                        ],
                                        color: Colors.redAccent[100],
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: isPressed2
                                          ? Icon(Icons.favorite_border,
                                              size: 30, color: Colors.white)
                                          : Icon(
                                              Icons.favorite,
                                              color:
                                                  Colors.pink.withOpacity(1.0),
                                            )),
                                ),
                              ) /*ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Container(
                                height: 40,
                                width: 40,
                                color: Colors.redAccent[100],
                                child: Icon(
                                  Icons.favorite_border,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),*/
                              )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 5, right: 5, top: 5, bottom: 13),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 120,
                      width: 260,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10,
                                spreadRadius: 5)
                          ]),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Image.asset('asset/pepsi.jpg'),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 35,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Pepsi 3l"),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text("buy 1 get"),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text("Cocacola 750 ml"),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text("Rs: 148"),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Positioned(
                            right: 0,
                            height: 40,
                            width: 40,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(3),
                              child: InkWell(
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                onHighlightChanged: (value) {
                                  setState(() {
                                    isHighlighted = !isHighlighted;
                                  });
                                },
                                onTap: () {
                                  setState(() {
                                    isPressed = !isPressed;
                                  });
                                },
                                child: AnimatedContainer(
                                    margin:
                                        EdgeInsets.all(isHighlighted ? 0 : 2.5),
                                    height: isHighlighted ? 40 : 50,
                                    width: isHighlighted ? 40 : 45,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: Duration(milliseconds: 300),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 20,
                                          offset: Offset(5, 10),
                                        ),
                                      ],
                                      color: Colors.redAccent[100],
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: isPressed
                                        ? Icon(Icons.favorite_border,
                                            size: 30, color: Colors.white)
                                        : Icon(
                                            Icons.favorite,
                                            color: Colors.pink.withOpacity(1.0),
                                          )),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ],
    );
  }
}

class Abc extends StatelessWidget {
  final title;
  Abc(this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 80,
        top: 60,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AlertDialog(
            title: Text(
              "Choose Nearest Store",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            content: Container(
                height: MediaQuery.of(context).size.height * 0.03,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey[600])),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    top: 4,
                  ),
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        title,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )),
                )),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(width: 1, color: Colors.grey[600]),
            ),
            backgroundColor: Colors.indigo[900],
          ),
        ],
      ),
    );
  }
}
