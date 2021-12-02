import 'package:carousel_pro/carousel_pro.dart';
import 'package:demo/data/data.dart';
import 'package:demo/widgets/custom_drawer.dart';
import 'package:demo/widgets/following_users.dart';
import 'package:demo/widgets/posts_carousel.dart';
import 'package:demo/widgets/profile_clipper.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  final List<String> images = [
    'https://mizuiku-emyeunuocsach.vn/storage/banners/2019/12/5df0b68232fb1_1.jpg',
    'https://mizuiku-emyeunuocsach.vn/storage/banners/2019/12/5e09ada3a4d0e.jpg',
    'https://mizuiku-emyeunuocsach.vn/storage/banners/2020/05/5ed083e06ab10.png',
    'https://mizuiku-emyeunuocsach.vn/storage/banners/2019/12/5df0b5c005f6c_3.jpg',
  ];
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'BE9ATY2Ygas', // id youtube video
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: ListView(
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
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
