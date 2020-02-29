import 'package:fish_redux/fish_redux.dart';

class MainState implements Cloneable<MainState> {
  bool middleActionReducerCalled = false;
  bool endActionReducerCalled = false;

  @override
  MainState clone() {
    return MainState()
      ..middleActionReducerCalled = middleActionReducerCalled
      ..endActionReducerCalled = endActionReducerCalled;
  }
}

MainState initState(Map<String, dynamic> args) {
  return MainState();
}
