import 'package:demo/constants.dart';
import 'package:flutter/material.dart';

class Introduce extends StatelessWidget {
  final String introduce;
  Introduce({this.introduce});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      width: double.infinity,
      child: Container(
        //  color: Colors.black12,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bgmain1.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Positioned(
              child: Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 0, right: 5, left: 80, bottom: 0),
                child: Text(
                  "Chương trình “Mizuiku” là sáng kiến tuyên truyền, giáo dục ý thức bảo vệ tài nguyên nước cho học sinh bậc tiểu học được khởi xướng bởi Tập đoàn Suntory và đã triển khai thành công tại Nhật Bản từ năm 2004. Đến nay, chương trình đã thu hút sự tham gia của trên 154 nghìn học sinh tiểu học và phụ huynh, nhận được đánh giá cao từ cộng đồng và xã hội Nhật Bản.",
                  style: TextStyle(color: kGrey1),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Positioned(
              child: Container(
                  alignment: Alignment.center,
                  child: FlatButton(
                    height: 20,
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
      ),
    );
  }

  // Widget build(BuildContext context) {
  //   return Container(
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         Container(
  //           alignment: Alignment.topCenter,
  //           child: Text(
  //             'Giới thiệu chương trình',
  //             style: TextStyle(
  //               fontSize: 14.0,
  //               fontWeight: FontWeight.w800,
  //             ),
  //           ),
  //         ),
  //         Stack(
  //           children: <Widget>[
  //             Container(
  //               //alignment: Alignment.center,
  //               child: Image.asset('assets/images/bgmain.png'),
  //               height: 250,
  //               width: double.infinity,
  //             ),
  //             Container(
  //                 alignment: Alignment.center,
  //                 child: Text(
  //                   'Text Message',
  //                   style: TextStyle(
  //                       color: Colors.white,
  //                       fontWeight: FontWeight.bold,
  //                       fontSize: 22.0),
  //                 )),
  //             // Container(
  //             //   alignment: Alignment.center,
  //             //   child: SizedBox(
  //             //     height: 300.0,
  //             //     child: Container(
  //             //       child: Image.asset('assets/images/bgmain.png'),
  //             //       width: double.infinity,
  //             //       height: double.infinity,
  //             //     ),
  //             //   ),
  //             // ),
  //             // Positioned(
  //             //   bottom: 135.0,
  //             //   child: Container(
  //             //       alignment: Alignment.bottomCenter,
  //             //       child: FlatButton(
  //             //         height: 25,
  //             //         color: Colors.blue[300],
  //             //         child: Text(
  //             //           "Xem chi tiết",
  //             //           style: TextStyle(
  //             //             fontSize: 12.0,
  //             //             fontWeight: FontWeight.w600,
  //             //           ),
  //             //         ),
  //             //         onPressed: () {},
  //             //         shape: RoundedRectangleBorder(
  //             //             borderRadius: BorderRadius.circular(18.0),
  //             //             side: BorderSide(color: Colors.blue[300])),
  //             //       )),
  //             // ),
  //             Center(
  //               child: Container(
  //                 alignment: Alignment.topCenter,
  //                 child: Text("Tin tức môi trường",
  //                     style: TextStyle(color: kGrey1)),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
