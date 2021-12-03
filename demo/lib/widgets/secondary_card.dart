import 'package:demo/constants.dart';
import 'package:demo/data/news.dart';

import 'package:flutter/material.dart';

class SecondaryCard extends StatelessWidget {
  final News news;
  SecondaryCard({this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        //  borderRadius: BorderRadius.circular(5.0),
        border: Border(
          top: BorderSide(
            width: 1.0,
            color: kGrey3,
          ),
        ),

        //.all(color: kGrey3, width: 1.0),
      ),
      child: Row(
        children: [
          Container(
            width: 90.0,
            height: 135.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.0),
              image: DecorationImage(
                image: NetworkImage(news.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: kTitleCard,
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    news.subtitle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: kDetailContent,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Text(news.category,
                            style: kDetailContent,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1),
                      ),
                      SizedBox(width: 10.0),
                      CircleAvatar(
                        radius: 5.0,
                        backgroundColor: kGrey1,
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: Text(news.time,
                            style: kDetailContent,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
