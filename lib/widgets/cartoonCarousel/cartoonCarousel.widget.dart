import 'package:cartoon_repository/utils/constants.util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CartoonCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(bottom: 50),
        child: Swiper(
          layout: SwiperLayout.TINDER,
          control: SwiperControl(
            onTap: () {
              print("here");
            },
            size: 30,
            iconNext: Icons.arrow_forward_ios_rounded,
            iconPrevious: Icons.arrow_back_ios_rounded,
            padding: EdgeInsets.all(30),
            color: kDarkColor,
          ),
          itemBuilder: (BuildContext context, int i) => Container(
            color: Colors.red,
          ),
          itemCount: 10,
          itemWidth: double.infinity,
          itemHeight: double.infinity,
        ),
      ),
    );
  }
}
