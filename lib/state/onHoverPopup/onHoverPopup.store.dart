import 'package:mobx/mobx.dart';

part 'onHoverPopup.store.g.dart';

class OnHoverPopupStore extends _OnHoverPopupStore with _$OnHoverPopupStore {}

abstract class _OnHoverPopupStore with Store {
  @observable
  bool hovering = false;

  @action
  void changeHover(bool b) => hovering = b;
}
