import 'package:cartoon_repository/utils/constants.util.dart';
import 'package:cartoon_repository/widgets/cartoonCarousel/cartoonCarousel.widget.dart';
import 'package:cartoon_repository/widgets/noiceImageLayer/noiceImageLayer.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String id = "homePage_id";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoiceImageLayer(
        includeBack: false,
        content: Column(
          children: [
            SizedBox(height: 100),
            SelectableText(
              "CARTOON ARCHIVE",
              style: kHeader1,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15),
            SelectableText(
              "A web archive of western and eastern political cartoons (1910 - 1939).",
              style: kHeader2,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            CartoonCarousel(),
          ],
        ),
      ),
    );
  }
}
