import 'package:carousel_pro/carousel_pro.dart';
import 'package:demo/widgets/profile_clipper.dart';
import 'package:flutter/material.dart';

class SlideImage extends StatelessWidget {
  final List<String> image;
  SlideImage({this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              images: image
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
    );
  }
}
