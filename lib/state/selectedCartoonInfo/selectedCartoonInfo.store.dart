import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'selectedCartoonInfo.store.g.dart';

class SelectedCartoonInfoStore extends _SelectedCartoonInfoStore
    with _$SelectedCartoonInfoStore {}

abstract class _SelectedCartoonInfoStore with Store {
  @observable
  String img;

  @observable
  int year;

  @action
  changeInfo({@required String i, @required int y}) {
    img = i;
    year = y;
  }
}
