import 'package:cartoon_repository/utils/constants.util.dart';
import 'package:flutter/material.dart';

class Cartoon extends StatelessWidget {
  final String img;
  final int year;

  Cartoon({this.img, this.year});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        child: Image.network(
          img,
          height: double.infinity,
        ),
      ),
    );
  }
}
