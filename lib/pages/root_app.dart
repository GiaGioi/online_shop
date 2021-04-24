import 'package:flutter/material.dart';
import 'package:online_shop/json/constant.dart';
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

  Widget getBody(){
    return IndexedStack(
      index: activeTab,
      children: [
        Center(
          child: Text('Home',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ),
        Center(
          child: Text('Store',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ),
        Center(
          child: Text('Account',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ),
        Center(
          child: Text('Cart',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ),
        Center(
          child: Text('More',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ),
      ],
    );

  }
  Widget getAppbar() {
    switch (activeTab) {
      case 0:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: Center(
            child: Text(
              'HOME',
              style: TextStyle(color: black),
            ),
          ),
        );
        break;
      case 1:
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

  Widget getFooter() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: white,
          border: Border(top: BorderSide(color: grey.withOpacity(0.2)))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(itemsTab.length, (index) {
            return IconButton(
                icon: Icon(
                  itemsTab[index]['icon'],
                  size: itemsTab[index]['size'],
                  color: activeTab == index ? accent : black,
                ),
                onPressed: () {
                  setState(() {
                    activeTab = index;
                  });
                });
          }),
        ),
      ),
    );
  }
}
