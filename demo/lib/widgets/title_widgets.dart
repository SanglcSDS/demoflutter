import 'package:demo/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleWidgets extends StatelessWidget {
  final String title;
  final Widget widget;
  TitleWidgets({this.title, this.widget});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 0.0, top: 0, bottom: 0, right: 0.0),
        child: FlatButton(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 9,
                child: Text(title, style: kNonActiveTabStyles),
              ),
              Expanded(
                  flex: 1,
                  child: IconButton(
                    alignment: Alignment.centerRight,
                    icon: Icon(Icons.arrow_forward_ios, color: kBlue1),
                  )),
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class TitleWidgetsNext extends StatelessWidget {
  final String title;
  final Widget widget;
  TitleWidgetsNext({this.title, this.widget});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
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
        Align(
          child: FlatButton(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 9,
                  child: Text(
                    title,
                    style: kNonActiveTabStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: IconButton(
                      alignment: Alignment.centerRight,
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: kGrey1,
                        size: 15,
                      ),
                    )),
              ],
            ),
            onPressed: () {},
          ),
        ),
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
      ],
    );
  }
}
