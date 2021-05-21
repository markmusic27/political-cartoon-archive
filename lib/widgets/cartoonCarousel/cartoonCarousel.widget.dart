import 'package:cartoon_repository/utils/constants.util.dart';
import 'package:cartoon_repository/widgets/cartoon/cartoon.widget.dart';
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
            onTap: () {},
            size: 40,
            iconNext: Icons.arrow_forward_ios,
            iconPrevious: Icons.arrow_back_ios,
            padding: EdgeInsets.all(30),
            color: kDarkColor,
          ),
          itemBuilder: (BuildContext context, int i) => Cartoon(
            img:
                "https://miro.medium.com/max/5250/1*L76siIuZsUWPPoFpN6w_Fg.jpeg",
            year: 2018,
          ),
          itemCount: 10,
          itemWidth: double.infinity,
          itemHeight: double.infinity,
        ),
      ),
    );
  }
}
