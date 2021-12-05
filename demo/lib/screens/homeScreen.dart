import 'package:demo/constants.dart';
import 'package:demo/home/Introduce.dart';
import 'package:demo/data/news.dart';
import 'package:demo/widgets/read_news_view.dart';
import 'package:demo/home/slide_imgae.dart';
import 'package:demo/widgets/primary_card.dart';
import 'package:demo/widgets/secondary_card.dart';
import 'package:demo/widgets/title_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> images = [
    'https://mizuiku-emyeunuocsach.vn/storage/banners/2019/12/5df0b68232fb1_1.jpg',
    'https://mizuiku-emyeunuocsach.vn/storage/banners/2019/12/5e09ada3a4d0e.jpg',
    'https://mizuiku-emyeunuocsach.vn/storage/banners/2020/05/5ed083e06ab10.png',
    'https://mizuiku-emyeunuocsach.vn/storage/banners/2019/12/5df0b5c005f6c_3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.cover,
            height: 40.0,
            width: 150.0,
          ),
          //  toolbarHeight: 88,
          actions: [
            IconButton(
                onPressed: () => {}, icon: Icon(Icons.settings, color: kGrey1)),
          ],
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SlideImage(image: images),
                Introduce(),
                TitleWidgets(title: "TIN TỨC", widget: HomeScreen()),
                ListView.builder(
                  itemCount: recentList.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    var recent = recentList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReadNewsView(news: recent),
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 135.0,
                        margin: EdgeInsets.symmetric(horizontal: 18.0),
                        child: SecondaryCard(news: recent),
                      ),
                    );
                  },
                ),
                TitleWidgetsNext(title: "Xem thêm", widget: HomeScreen()),
                ListView.builder(
                  itemCount: recentList.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    var recent = recentList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReadNewsView(news: recent),
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 135.0,
                        margin: EdgeInsets.symmetric(horizontal: 18.0),
                        child: SecondaryCard(news: recent),
                      ),
                    );
                  },
                ),
                TitleWidgetsNext(title: "Xem thêm", widget: HomeScreen()),
                TitleWidgets(title: "THƯ VIỆN ẢNH", widget: HomeScreen()),
                Container(
                  width: double.infinity,
                  height: 300.0,
                  padding: EdgeInsets.only(left: 18.0),
                  child: ListView.builder(
                    itemCount: popularList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var news = popularList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReadNewsView(news: news),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 12.0),
                          child: PrimaryCard(news: news),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 8.0),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 1.0,
                        color: kGrey3,
                      ),
                    ),
                  ),
                ),
                TitleWidgets(title: "THƯ VIỆN VIDEO", widget: HomeScreen()),
                Container(
                  width: double.infinity,
                  height: 300.0,
                  padding: EdgeInsets.only(left: 18.0),
                  child: ListView.builder(
                    itemCount: popularList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var news = popularList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReadNewsView(news: news),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 12.0),
                          child: PrimaryCard(news: news),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
