import 'package:demo/bottomNav.dart';
import 'package:demo/constants.dart';
import 'package:demo/data/news.dart';
import 'package:demo/screens/read_news_view.dart';
import 'package:demo/widgets/circle_button.dart';
import 'package:demo/widgets/secondary_card.dart';
import 'package:flutter/material.dart';

class Learning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            leading: CircleButton(
              icon: Icons.arrow_back_ios,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNav(),
                ),
              ),
            ),
            title: Text("Khóa Học", style: TextStyle(color: kGrey1)),
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
          body: DefaultTabController(
            length: 2,
            child: Column(
              children: <Widget>[
                Container(
                  color: kGrey3,
                  constraints: BoxConstraints.expand(height: 50),
                  child: TabBar(
                    tabs: [
                      Row(children: [
                        Text("Tin tức chương trình",
                            style: TextStyle(color: kGrey1))
                      ]),
                      Row(children: [
                        Text("Tin tức môi trường",
                            style: TextStyle(color: kGrey1))
                      ]),
                    ],
                    labelPadding: EdgeInsets.all(15),
                    indicator: ShapeDecoration(
                        shape: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 0,
                                style: BorderStyle.solid)),
                        gradient: LinearGradient(
                            colors: [Color(0xff339AFF), Color(0xffCAE4FF)])),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: TabBarView(children: [
                      Container(
                        child: ListView.builder(
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
                                    builder: (context) =>
                                        ReadNewsView(news: recent),
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
                      ),
                      Container(
                        child: ListView.builder(
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
                                    builder: (context) =>
                                        ReadNewsView(news: recent),
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
                      ),
                    ]),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
