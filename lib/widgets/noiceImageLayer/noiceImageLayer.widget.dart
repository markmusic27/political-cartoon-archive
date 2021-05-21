import 'package:cartoon_repository/widgets/backNavButton/backNavButton.widget.dart';
import 'package:cartoon_repository/widgets/clickHook/clickHook.widget.dart';
import 'package:flutter/material.dart';

class NoiceImageLayer extends StatelessWidget {
  final Widget content;
  final bool includeBack;

  NoiceImageLayer({@required this.content, @required this.includeBack});

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
        ClickHook(),
        Visibility(
          visible: includeBack,
          child: BackNavButton(),
        ),
        content,
      ],
    );
  }
}
