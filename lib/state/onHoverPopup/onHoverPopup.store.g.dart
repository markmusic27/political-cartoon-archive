// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onHoverPopup.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OnHoverPopupStore on _OnHoverPopupStore, Store {
  final _$colorAtom = Atom(name: '_OnHoverPopupStore.color');

  @override
  Color get color {
    _$colorAtom.reportRead();
    return super.color;
  }

  @override
  set color(Color value) {
    _$colorAtom.reportWrite(value, super.color, () {
      super.color = value;
    });
  }

  final _$_OnHoverPopupStoreActionController =
      ActionController(name: '_OnHoverPopupStore');

  @override
  void changeColor(Color b) {
    final _$actionInfo = _$_OnHoverPopupStoreActionController.startAction(
        name: '_OnHoverPopupStore.changeColor');
    try {
      return super.changeColor(b);
    } finally {
      _$_OnHoverPopupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
color: ${color}
    ''';
  }
}
