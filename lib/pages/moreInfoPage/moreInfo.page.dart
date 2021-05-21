import 'package:cartoon_repository/core/core.dart';
import 'package:cartoon_repository/utils/constants.util.dart';
import 'package:cartoon_repository/widgets/noiceImageLayer/noiceImageLayer.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class MoreInfoPage extends StatefulWidget {
  static String id = "moreInfoPage_id";

  @override
  _MoreInfoPageState createState() => _MoreInfoPageState();
}

class _MoreInfoPageState extends State<MoreInfoPage> {
  Core core;

  @override
  void initState() {
    super.initState();

    core = Provider.of<Core>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoiceImageLayer(
        includeBack: true,
        content: Observer(
          builder: (_) => Column(
            children: [
              SizedBox(height: 100),
              SelectableText(
                "CONTEXT TO CARTOON",
                style: kHeader1.copyWith(fontSize: 60),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),
              SelectableText(
                "This cartoon was originally produced back in ${core.state.selectedCartoonInfo.year}. Since all of these cartoons\nare exposing/making fun of certain events or individals back when they were created,\nhere is a list of New York Times articles from that time.",
                style: kHeader2,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
