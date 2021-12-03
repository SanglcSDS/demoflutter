import 'package:demo/constants.dart';
import 'package:flutter/material.dart';

class Introduce extends StatelessWidget {
  final String introduce;
  Introduce({this.introduce});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
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
            children: <Widget>[
              Container(
                //alignment: Alignment.center,
                child: Image.asset('assets/images/bgmain.png'),
                height: 250,
                width: double.infinity,
              ),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Text Message',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  )),
              // Container(
              //   alignment: Alignment.center,
              //   child: SizedBox(
              //     height: 300.0,
              //     child: Container(
              //       child: Image.asset('assets/images/bgmain.png'),
              //       width: double.infinity,
              //       height: double.infinity,
              //     ),
              //   ),
              // ),
              // Positioned(
              //   bottom: 135.0,
              //   child: Container(
              //       alignment: Alignment.bottomCenter,
              //       child: FlatButton(
              //         height: 25,
              //         color: Colors.blue[300],
              //         child: Text(
              //           "Xem chi tiết",
              //           style: TextStyle(
              //             fontSize: 12.0,
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //         onPressed: () {},
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(18.0),
              //             side: BorderSide(color: Colors.blue[300])),
              //       )),
              // ),
              Center(
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Text("Tin tức môi trường",
                      style: TextStyle(color: kGrey1)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
