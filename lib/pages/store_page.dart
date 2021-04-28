import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_shop/theme/colors.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Phnom Penh",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(width: 10),
                Icon(
                  FontAwesomeIcons.mapMarkerAlt,
                  size: 20,
                )
              ],
            ),
          ),
          SizedBox(height: 40),
          Text(
            "Find all \nStore here",
            style: TextStyle(
                fontSize: 30, height: 1.5, fontWeight: FontWeight.w400),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Flexible(
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
