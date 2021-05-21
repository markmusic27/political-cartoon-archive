import 'package:cartoon_repository/widgets/cartoonCarousel/cartoonCarousel.widget.dart';
import 'package:cartoon_repository/widgets/header/header.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String id = "homePage_id";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          CartoonCarousel(),
        ],
      ),
    );
  }
}
