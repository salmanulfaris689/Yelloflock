import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:yellwflck/Design/Homepage.dart';
import 'package:yellwflck/Design/MyCart.dart';
import 'package:yellwflck/Design/Mywallet.dart';
import 'package:yellwflck/Design/profile.dart';
import 'package:yellwflck/Design/search.dart';
import 'package:yellwflck/Design/tab_bar.dart';
import 'package:yellwflck/Design/topdeals.dart';

import 'Notification.dart';
import 'favourite.dart';
import 'myorder.dart';

class Bottomnav extends StatefulWidget {
  @override
  _BottomnavState createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {

  int currentIndex;

  List<Widget>kk=[
    Tab_bar(),
    Search(),
    Mycart(),
    Profile(),

  ];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        toolbarHeight: 80,

        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 5),
                child: Container(
                  height: 35,
                  width: 180,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search here..",
                      hintStyle: TextStyle(color: Colors.black, fontSize: 11),
                      suffixIcon: Icon(
                        Icons.search_rounded,
                        size: 20,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
        backgroundColor: Colors.indigo[900],
      ),*/

      body:

      kk[currentIndex],


      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 18,right: 18,left: 18),
        child: ClipRRect(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(18),bottomRight:Radius.circular(18) ),
          child: BubbleBottomBar(
            backgroundColor: Colors.indigo.shade50,
            opacity: 0,
            currentIndex: currentIndex,
            onTap: changePage,

            elevation: 8,
            items: <BubbleBottomBarItem>[
              BubbleBottomBarItem(
                  backgroundColor: Colors.indigo.shade900,
                  icon: Icon(
                    Icons.home_filled,size: 25,
                    color: Colors.black26,
                  ),
                  activeIcon: Icon(
                    Icons.home_filled,size: 25,
                    color: Colors.indigo.shade900,
                  ),
                  title: Text("Home",style: TextStyle(color: Colors.indigo.shade900,fontWeight: FontWeight.bold),)),
              BubbleBottomBarItem(
                  backgroundColor: Colors.deepPurple,
                  icon: Icon(
                    Icons.search,size: 25,
                    color: Colors.black26,
                  ),
                  activeIcon: Icon(
                    Icons.search,size: 25,
                    color: Colors.indigo.shade900,
                  ),
                  title: Text("Search",style: TextStyle(color: Colors.indigo.shade900))),
              BubbleBottomBarItem(
                  backgroundColor: Colors.indigo,
                  icon: Icon(
                    Icons.shopping_bag_outlined,size: 22,
                    color: Colors.black38,
                  ),
                  activeIcon: Icon(
                    Icons.shopping_bag_outlined,size: 22,
                    color: Colors.indigo.shade900,
                  ),
                  title: Text("Cart",style: TextStyle(color: Colors.indigo.shade900))),
              BubbleBottomBarItem(
                  backgroundColor: Colors.green,
                  icon: Icon(
                    Icons.person_rounded,size: 25,
                    color: Colors.black38,
                  ),
                  activeIcon: Icon(
                    Icons.person_rounded,size: 25,
                    color: Colors.indigo.shade900,
                  ),
                  title: Text("Profile",style: TextStyle(color: Colors.indigo.shade900)))
            ],
          ),
        ),
      ),

     /* drawer: Drawer(
        child: ListView(
          children: [
            Container(
                height: 65,
                color: Colors.indigo[900],
                child: ListTile(
                  leading: Icon(
                    Icons.menu,
                    size: 40,
                    color: Colors.white70,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delivery Location",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: [
                              Text(
                                "Kozhikode",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.edit_outlined,
                                color: Colors.white,
                                size: 15,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Combo()));
              },
              child: Container(
                height: 55,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.local_offer_outlined),
                  title: Text("Combo Offer"),
                ),
              ),
            ),
            Divider(
              height: 4,
              thickness: 4,
              color: Colors.black12,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Topdeals()));
              },
              child: Container(
                height: 55,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.filter_vintage_sharp),
                  title: Text("Top Deals"),
                ),
              ),
            ),
            Divider(height: 3, thickness: 3, color: Colors.black12),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Myorders()));
              },
              child: Container(
                height: 55,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.book_outlined),
                  title: Text("My Order"),
                ),
              ),
            ),
            Divider(
              height: 3,
              thickness: 3,
              color: Colors.black12,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Favourite()));
              },
              child: Container(
                height: 55,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.favorite_border),
                  title: Text("My Favourites"),
                ),
              ),
            ),
            Divider(
              height: 3,
              thickness: 3,
              color: Colors.black12,
            ),
            Container(
              height: 55,
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text("My Wallet"),
              ),
            ),
            Divider(
              height: 3,
              thickness: 3,
              color: Colors.black12,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Mycart()));
              },
              child: Container(
                height: 55,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.shopping_cart_rounded),
                  title: Text("My Cart"),
                ),
              ),
            ),
            Divider(height: 3, thickness: 3, color: Colors.black12),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => noti()));
              },
              child: Container(
                height: 55,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.notifications_none_outlined),
                  title: Text("Notification"),
                ),
              ),
            ),
            Divider(height: 3, thickness: 3, color: Colors.black12),
            Container(
              height: 65,
              color: Colors.white,
              child: ListTile(),
            ),
            Divider(height: 3, thickness: 3, color: Colors.black12),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.share),
                title: Text("Share with Friends"),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.star),
                title: Text("Rate us on PlayStore"),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.security),
                title: Text("Contact & Support"),
              ),
            ),
          ],
        ),
      ),
*/

    );
  }
}