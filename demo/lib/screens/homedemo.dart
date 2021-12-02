import 'package:carousel_pro/carousel_pro.dart';
import 'package:demo/data/data.dart';
import 'package:demo/models/restaurant.dart';
import 'package:demo/screens/popular_tab_view.dart';
import 'package:demo/widgets/profile_clipper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _buildRestaurants() {
    List<Widget> restaurantList = [];
    restaurants.forEach((Restaurant restaurant) {
      restaurantList.add(
        GestureDetector(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 0.0),
            decoration: BoxDecoration(
              color: Colors.white,
              //  borderRadius: BorderRadius.circular(5.0),
              border: Border(
                // bottom: BorderSide(
                //   width: 1.0,
                //   color: Colors.grey[200],
                // ),
                top: BorderSide(
                  width: 1.0,
                  color: Colors.grey[200],
                ),
              ),
            ),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: .0, vertical: 12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2.0),
                      child: Hero(
                        tag: restaurant.imageUrl,
                        child: Image(
                          height: 120.0,
                          width: 120.0,
                          image: AssetImage(restaurant.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 12.0, top: 12.0, right: 0, bottom: 12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //  crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 103.0,
                            child: Text(
                              restaurant.name,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 4,
                            ),
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Expanded(
                                  flex: 0,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 0.0,
                                        top: 0.0,
                                        right: 5.0,
                                        bottom: 0.0),
                                    child: Icon(Icons.date_range,
                                        size: 19, color: Colors.grey),
                                  ),
                                ),
                                Text(
                                  '2/12/2021',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                // Spacer(flex: 2),
                                // Row(
                                //   crossAxisAlignment: CrossAxisAlignment.end,
                                //   mainAxisAlignment: MainAxisAlignment.end,
                                //   children: <Widget>[
                                //     IconButton(
                                //       icon: Icon(FontAwesomeIcons.facebook),
                                //       color: Colors.blue,
                                //       onPressed: () {},
                                //       iconSize: 19,
                                //     ),
                                //     IconButton(
                                //       icon: Icon(FontAwesomeIcons.twitter),
                                //       color: Colors.blue,
                                //       onPressed: () {},
                                //       iconSize: 19,
                                //     ),
                                //   ],
                                // ),
                              ]),
                        ],
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      );
    });
    return Column(children: restaurantList);
  }

  final List<String> images = [
    'https://mizuiku-emyeunuocsach.vn/storage/banners/2019/12/5df0b68232fb1_1.jpg',
    'https://mizuiku-emyeunuocsach.vn/storage/banners/2019/12/5e09ada3a4d0e.jpg',
    'https://mizuiku-emyeunuocsach.vn/storage/banners/2020/05/5ed083e06ab10.png',
    'https://mizuiku-emyeunuocsach.vn/storage/banners/2019/12/5df0b5c005f6c_3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                ClipPath(
                  clipper: ProfileClipper(),
                  child: SizedBox(
                    height: 200.0,
                    width: double.infinity,
                    child: Carousel(
                      dotSpacing: 15.0,
                      dotSize: 6.0,
                      autoplay: true,
                      dotIncreasedColor: Colors.blue,
                      dotBgColor: Colors.transparent,
                      indicatorBgPadding: 10.0,
                      autoplayDuration: Duration(seconds: 10),
                      dotPosition: DotPosition.topCenter,
                      images: images
                          .map((item) => Container(
                                child: Image.network(
                                  item,
                                  fit: BoxFit.cover,
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
            PopularTabView(),
            Container(
              alignment: Alignment.topCenter,
              child: Text(
                'Giới thiệu chương trình',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  child: SizedBox(
                    height: 300.0,
                    child: Container(
                      child: Image.asset('assets/images/bgmain.png'),
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 135.0,
                  child: Container(
                      alignment: Alignment.bottomCenter,
                      child: FlatButton(
                        height: 25,
                        color: Colors.blue[300],
                        child: Text(
                          "Xem chi tiết",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.blue[300])),
                      )),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Tin tức chương trình',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            _buildRestaurants(),
          ],
        ),
      ],
    );
  }
}
