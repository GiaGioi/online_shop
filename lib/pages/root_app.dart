import 'package:flutter/material.dart';
import 'package:online_shop/json/constant.dart';
import 'package:online_shop/theme/colors.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: getFooter(),
    );
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
                icon: Icon(itemsTab[index]['icon'],
                    size: itemsTab[index]['size']),
                onPressed: () {});
          }),
        ),
      ),
    );
  }
}
