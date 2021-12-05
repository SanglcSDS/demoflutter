import 'package:demo/bottomNav.dart';
import 'package:demo/constants.dart';
import 'package:demo/data/news.dart';
import 'package:demo/widgets/read_introduce.dart';
import 'package:demo/widgets/read_news_view.dart';
import 'package:demo/widgets/circle_button.dart';
import 'package:demo/widgets/secondary_card.dart';
import 'package:flutter/material.dart';

class IntroduceView extends StatelessWidget {
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
            title: Text("Giới Thiệu", style: TextStyle(color: kGrey1)),
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
                        Text("Giới thiệu chương trình",
                            style: TextStyle(color: kGrey1))
                      ]),
                      Row(children: [
                        Text("Giới thiệu đối tác",
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
                                        ReadIntroduceView(news: recent),
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
                                        ReadIntroduceView(news: recent),
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