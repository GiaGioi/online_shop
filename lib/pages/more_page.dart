import 'package:flutter/material.dart';
import 'package:online_shop/json/constant.dart';
import 'package:online_shop/theme/colors.dart';

class MorePage extends StatefulWidget {
  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
          child: Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(profileUrl), fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Text(
                    "Daniel",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "4 Order",
                    style: TextStyle(fontSize: 15, color: grey),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Divider(
          thickness: 1,
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              menusMore.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Text(
                    menusMore[index],
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                  ),
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: (size.width - 100) / 2,
                height: 50,
                decoration: BoxDecoration(
                  color: black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "Settings",
                    style: TextStyle(color: white, fontSize: 15),
                  ),
                ),
              ),
              Container(
                width: (size.width - 100) / 2,
                height: 50,
                decoration: BoxDecoration(
                  color: black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "Sign out",
                    style: TextStyle(color: white, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
