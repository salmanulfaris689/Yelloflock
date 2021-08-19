import 'package:flutter/material.dart';
import 'package:yellwflck/Design/Homepage.dart';
import 'package:yellwflck/Design/bottomnav.dart';
import 'package:yellwflck/Design/tab_bar.dart';


class noti extends StatefulWidget {
  @override
  _notiState createState() => _notiState();
}

class _notiState extends State<noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => Bottomnav()));
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
            )),
        title: Text("Notification", style: TextStyle(color: Colors.black)),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListTile(
                title: Text("Order Packed", style: TextStyle(fontSize: 15)),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 170),
                        child: Text(
                          "Please be Ready with your Item",
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 220),
                        child: Text(
                          "05-02-2020 6:30 PM",
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListTile(
                title: Text("Out For Delivery", style: TextStyle(fontSize: 15)),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 165),
                        child: Text("We Will Beet You Door Step Soon ",
                            style: TextStyle(fontSize: 11)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 220),
                        child: Text(
                          "29-01-2020 6:30 PM",
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
