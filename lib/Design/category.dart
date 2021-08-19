import 'package:flutter/material.dart';
import 'package:yellwflck/Design/subcategory.dart';

class category extends StatefulWidget {
  @override
  _categoryState createState() => _categoryState();
}

class _categoryState extends State<category> {
  final mylist = [
    "KLAR",
    "Shampoo",
  ];
  final mylistimg = [
    "asset/categoryimg/klar2.png",
    "asset/shamp1.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: GridView.builder(
          itemCount: mylist.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
          ),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => subcategory(
                                  subcatname: mylist[index],
                                )),
                      );
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          mylistimg[index],
                          width: 130,
                          height: 100,
                        ),
                        Text("${mylist[index]}"),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    ));
  }
}
