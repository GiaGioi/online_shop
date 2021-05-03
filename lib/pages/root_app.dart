import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:online_shop/json/constant.dart';
import 'package:online_shop/pages/account_page.dart';
import 'package:online_shop/pages/cart_page.dart';
import 'package:online_shop/pages/home_page.dart';
import 'package:online_shop/pages/more_page.dart';
import 'package:online_shop/pages/store_page.dart';
import 'package:online_shop/theme/colors.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;

  AppBar appBar = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: getFooter(),
      appBar: getAppbar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        StorePage(),
        AccountPage(),
        CartPage(),
        MorePage(),
      ],
    );
  }

  //TODO: AppBar
  Widget getAppbar() {
    switch (activeTab) {
      //TODO: HOME
      case 0:
        appBar = null;
        break;
      //  TODO: All Store
      case 1:
        appBar = null;
        break;
      //  TODO: Account
      case 2:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: Center(
            child: Text(
              'ACCOUNT',
              style: TextStyle(color: black),
            ),
          ),
        );
        break;
      //  TODO: Cart
      case 3:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: Center(
            child: Text(
              'CART',
              style: TextStyle(color: black),
            ),
          ),
        );
        break;
      //  TODO: More
      case 4:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: Center(
            child: Text(
              'MORE',
              style: TextStyle(color: black),
            ),
          ),
        );
        break;
      default:
    }
  }

  //TODO: Icon Bottom
  Widget getFooter() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: white,
          border: Border(top: BorderSide(color: grey.withOpacity(0.2)))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(itemsTab.length, (index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    itemsTab[index]['icon'],
                    size: itemsTab[index]['size'],
                    color: activeTab == index ? accent : black,
                  ),
                  onPressed: () {
                    setState(() {
                      activeTab = index;
                    });
                  },
                ),
                Text(
                  itemsTab[index]["text"],
                  style: TextStyle(color: activeTab == index ? accent : black),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
