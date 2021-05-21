// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onHoverPopup.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OnHoverPopupStore on _OnHoverPopupStore, Store {
  final _$hoveringAtom = Atom(name: '_OnHoverPopupStore.hovering');

  @override
  bool get hovering {
    _$hoveringAtom.reportRead();
    return super.hovering;
  }

  @override
  set hovering(bool value) {
    _$hoveringAtom.reportWrite(value, super.hovering, () {
      super.hovering = value;
    });
  }

  final _$_OnHoverPopupStoreActionController =
      ActionController(name: '_OnHoverPopupStore');

  @override
  void changeHover(bool b) {
    final _$actionInfo = _$_OnHoverPopupStoreActionController.startAction(
        name: '_OnHoverPopupStore.changeHover');
    try {
      return super.changeHover(b);
    } finally {
      _$_OnHoverPopupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hovering: ${hovering}
    ''';
  }
}
