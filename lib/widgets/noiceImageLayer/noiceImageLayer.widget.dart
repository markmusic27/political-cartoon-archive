import 'package:flutter/material.dart';

class NoiceImageLayer extends StatelessWidget {
  final Widget content;

  NoiceImageLayer({@required this.content});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 1,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/noice.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        content,
      ],
    );
  }
}
