import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:online_shop/json/constant.dart';
import 'package:online_shop/theme/colors.dart';
import 'package:online_shop/widgets/custom_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      padding: EdgeInsets.zero,
      children: [
        //TODO: Top Home Page
        Stack(
          children: [
            //TODO: Image Home Page
            Container(
              width: size.width,
              height: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(homeImg), fit: BoxFit.cover)),
            ),
            //TODO: ICON Home Page
            Padding(
              padding: const EdgeInsets.only(top: 35, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.favorite,
                    color: white,
                    size: 28,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Feather.search,
                    color: white,
                    size: 25,
                  ),
                ],
              ),
            ),
            //TODO: Text Winter Coleection
            Positioned(
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Winter Collection",
                      style: TextStyle(
                        fontSize: 25,
                        color: white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Discover",
                          style: TextStyle(
                            fontSize: 25,
                            color: white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: white,
                          size: 18,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 40),
        //TODO: Text Categories
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Categories",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Text("All", style: TextStyle(color: grey)),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_forward_ios, color: grey, size: 16)
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        // TODO: List Categories
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categories.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  width: 180,
                  height: 220,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(categories[index]['imgUrl']),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
        SizedBox(height: 40),
        //TODO: Text Recommended for you
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recommended for you",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Text("All", style: TextStyle(color: grey)),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_forward_ios, color: grey, size: 16)
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        //TODO: List Recommended for you
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(recommends.length, (index) {
              return Padding(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    // TODO: Image
                    Container(
                        width: 140,
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image:
                                    NetworkImage(recommends[index]["imgUrl"]),
                                fit: BoxFit.cover))),
                    SizedBox(height: 5),
                    //TODO: Text and Price
                    Container(
                      width: 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(recommends[index]['title'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: black,
                                  height: 1.5)),
                          SizedBox(height: 5),
                          Text("\$ " + recommends[index]['price'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: black,
                                  height: 1.5)),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
        SizedBox(height: 20),
        //TODO: Slider Home Page
        CustomCarouselHomePage(items: slider),
        SizedBox(height: 40),
        //TODO: Text Recently
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recently",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Text("All", style: TextStyle(color: grey)),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_forward_ios, color: grey, size: 16)
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        // TODO: List Recently
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(recently.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    // TODO: Image
                    Container(
                        width: 140,
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image:
                                NetworkImage(recently[index]["imgUrl"]),
                                fit: BoxFit.cover))),
                    SizedBox(height: 5),
                    //TODO: Text and Price
                    Container(
                      width: 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(recently[index]['title'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: black,
                                  height: 1.5)),
                          SizedBox(height: 5),
                          Text("\$ " + recently[index]['price'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: black,
                                  height: 1.5)),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
