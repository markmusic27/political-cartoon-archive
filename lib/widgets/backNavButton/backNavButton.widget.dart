import 'package:cartoon_repository/utils/constants.util.dart';
import 'package:flutter/material.dart';

class BackNavButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Icon(
            Icons.arrow_back_ios,
            color: kDarkColor,
            size: 30,
          ),
        ),
      ),
    );
  }
}
