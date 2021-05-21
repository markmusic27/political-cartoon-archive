// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selectedCartoonInfo.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SelectedCartoonInfoStore on _SelectedCartoonInfoStore, Store {
  final _$imgAtom = Atom(name: '_SelectedCartoonInfoStore.img');

  @override
  String get img {
    _$imgAtom.reportRead();
    return super.img;
  }

  @override
  set img(String value) {
    _$imgAtom.reportWrite(value, super.img, () {
      super.img = value;
    });
  }

  final _$yearAtom = Atom(name: '_SelectedCartoonInfoStore.year');

  @override
  int get year {
    _$yearAtom.reportRead();
    return super.year;
  }

  @override
  set year(int value) {
    _$yearAtom.reportWrite(value, super.year, () {
      super.year = value;
    });
  }

  final _$_SelectedCartoonInfoStoreActionController =
      ActionController(name: '_SelectedCartoonInfoStore');

  @override
  dynamic changeInfo({String i, int y}) {
    final _$actionInfo = _$_SelectedCartoonInfoStoreActionController
        .startAction(name: '_SelectedCartoonInfoStore.changeInfo');
    try {
      return super.changeInfo(i: i, y: y);
    } finally {
      _$_SelectedCartoonInfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
img: ${img},
year: ${year}
    ''';
  }
}
