import 'dart:html';

import 'package:cartoon_repository/core/core.dart';
import 'package:cartoon_repository/utils/constants.util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class Cartoon extends StatefulWidget {
  final String img;
  final int year;

  Cartoon({this.img, this.year});

  @override
  _CartoonState createState() => _CartoonState();
}

class _CartoonState extends State<Cartoon> with TickerProviderStateMixin {
  Core core;
  AnimationController controller;
  Animation colorAnimation;

  @override
  void initState() {
    super.initState();

    core = Provider.of<Core>(context, listen: false);
  }

  @override
  void dispose() {
    controller.dispose();

    controller = AnimationController(
      vsync: this,
    );

    super.dispose();
  }

  void animate(bool active) {
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    Color from = active ? kDarkColor.withOpacity(0.2) : Colors.transparent;
    Color to = active ? Colors.transparent : kDarkColor.withOpacity(0.2);

    colorAnimation = ColorTween(begin: from, end: to).animate(controller);

    controller.forward(from: 0);

    controller.addListener(() {
      core.state.onHoverPopup.changeColor(colorAnimation.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (_) {
            animate(false);
          },
          onExit: (_) {
            animate(true);
          },
          child: Image.network(
            widget.img,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
