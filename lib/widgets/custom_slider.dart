import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/theme/colors.dart';

class CustomCarouselHomePage extends StatefulWidget {
  final List<String> items;

  CustomCarouselHomePage({this.items});

  @override
  _CustomCarouselHomePageState createState() => _CustomCarouselHomePageState();
}

class _CustomCarouselHomePageState extends State<CustomCarouselHomePage> {
  int activeIndex = 0;

  setActiveDot(index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          //TODO: CarouselSlider dùng để chiếu slide ảnh
          child: CarouselSlider(
              // onPageChanged: (index) {
              //   setActiveDot(index);
              // },
              items: widget.items.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image(
                              image: NetworkImage(item), fit: BoxFit.cover),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ],
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                autoPlayInterval: Duration(seconds: 3),
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                autoPlayAnimationDuration: Duration(seconds: 2),
                onPageChanged: setActiveDot(activeIndex),
                viewportFraction: 1.0,
              )),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: List.generate(widget.items.length, (index) {
              return activeIndex == index ? ActiveDot() : InactiveDot();
            }),
          ),
        )
      ],
    );
  }
}

//TODO: ActiveDot
class ActiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 25,
        height: 8,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

//TODO: InactiveDot
class InactiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: grey,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
