import 'package:fish_redux/fish_redux.dart';

enum MainAction { startAction, middleAction, endAction }

class MainActionCreator {
  static Action onStartAction() {
    return const Action(MainAction.startAction);
  }

  static Action onMiddleAction() {
    return const Action(MainAction.middleAction);
  }

  static Action onEndAction() {
    return const Action(MainAction.endAction);
  }
}
