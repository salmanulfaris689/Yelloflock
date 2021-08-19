import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yellwflck/Design/Bevarages.dart';
import 'package:yellwflck/Design/Cake.dart';
import 'package:yellwflck/Design/Homepage.dart';
import 'package:yellwflck/Design/Meat.dart';
import 'package:yellwflck/Design/MyCart.dart';
import 'package:yellwflck/Design/Notification.dart';
import 'package:yellwflck/Design/address.dart';
import 'package:yellwflck/Design/bottomnav.dart';
import 'package:yellwflck/Design/category.dart';
import 'package:yellwflck/Design/Mywallet.dart';
import 'package:yellwflck/Design/editprofile.dart';
import 'package:yellwflck/Design/favourite.dart';
import 'package:yellwflck/Design/myorder.dart';
import 'package:yellwflck/Design/profile.dart';
import 'package:yellwflck/Design/topdeals.dart';

import 'bottomnav.dart';

class Tab_bar extends StatefulWidget {


  @override
  _Tab_barState createState() => _Tab_barState();
}

class _Tab_barState extends State<Tab_bar> with SingleTickerProviderStateMixin{



  TabController _controller;
  String name;

  void getdata() async{
    final prefs = await SharedPreferences.getInstance();
    name = prefs.getString('name');
  }


  @override
  void initState() {

    // TODO: implement initState
    getdata();
    super.initState();
    _controller = new TabController(length: 5, vsync: this);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              )
            ],
          ),
        ],
        backgroundColor: Colors.indigo[900],
      ),


      drawer: Drawer(
        child: ListView(
          children: [
            Container(
                height: 65,
                color: Colors.indigo[900],
                child: ListTile(
                  leading: Icon(Icons.account_circle, size: 40, color: Colors.white70,),
                 title:  Text("Hello,"+name.toString(),style: TextStyle(fontSize: 25, color: Colors.white,fontStyle: FontStyle.italic),),
                ),
            ),

            /*GestureDetector(
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
            ),*/

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
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => wallet()));
              },
              child: Container(
                height: 55,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.account_balance_wallet),
                  title: Text("My Wallet"),
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





      body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            SizedBox(height: 5,),
            new Container(
              decoration: new BoxDecoration(color: Colors.grey[300]),
              child: TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(color: Colors.indigo[900]),
                controller: _controller,
                tabs: [
                  Container(
                    child: new Tab(
                      text: 'Grocery',
                    ),
                    width: 100,
                  ),
                  Container(
                    child: new Tab(
                      text: 'Beauty',
                    ),
                    width: 80,
                  ),
                  Container(
                    child: new Tab(
                      text: 'Meat',
                    ),
                    width: 80,
                  ),
                  Container(
                    child: new Tab(
                      text: 'Cake',
                    ),
                    width: 80,
                  ),
                  Container(
                    child: new Tab(
                      text: 'Beverages',
                    ),
                    width: 80,
                  ),
                ],
              ),
            ),

            ListView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              children: [new Container(
                height: MediaQuery.of(context).size.height*0.77,
                child: new TabBarView(
                  controller: _controller,
                  children: <Widget>[
                    HomePage(),
                    category(),
                    Meat(),
                    Cake(),
                    Bevarages(),


                  ],
                ),
              ),
            ]
            ),
          ],
      ),
    );
  }
}
