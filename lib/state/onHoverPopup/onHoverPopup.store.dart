import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'onHoverPopup.store.g.dart';

class OnHoverPopupStore extends _OnHoverPopupStore with _$OnHoverPopupStore {}

abstract class _OnHoverPopupStore with Store {
  @observable
  Color color = Colors.transparent;

  @action
  void changeColor(Color b) => color = b;
}
