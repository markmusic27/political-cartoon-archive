import 'package:cartoon_repository/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class ClickHook extends StatefulWidget {
  @override
  _ClickHookState createState() => _ClickHookState();
}

class _ClickHookState extends State<ClickHook> with TickerProviderStateMixin {
  Core core;

  @override
  void initState() {
    super.initState();

    core = Provider.of<Core>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Container(
        color: core.state.onHoverPopup.color,
      ),
    );
  }
}
