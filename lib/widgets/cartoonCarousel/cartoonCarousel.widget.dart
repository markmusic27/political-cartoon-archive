import 'package:cartoon_repository/core/core.dart';
import 'package:cartoon_repository/utils/constants.util.dart';
import 'package:cartoon_repository/widgets/cartoon/cartoon.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';

class CartoonCarousel extends StatefulWidget {
  @override
  _CartoonCarouselState createState() => _CartoonCarouselState();
}

class _CartoonCarouselState extends State<CartoonCarousel> {
  Core core;

  @override
  void initState() {
    super.initState();

    core = Provider.of<Core>(context, listen: false);
  }

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
          itemBuilder: (BuildContext context, int i) =>
              core.utils.cartoons.all[i],
          itemCount: 10,
          itemWidth: double.infinity,
          itemHeight: double.infinity,
        ),
      ),
    );
  }
}
