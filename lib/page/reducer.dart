import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MainState> buildReducer() {
  return asReducer(
    <Object, Reducer<MainState>>{
      MainAction.middleAction: _onMiddleAction,
      MainAction.endAction: _onEndAction,
    },
  );
}

MainState _onMiddleAction(MainState state, Action action) {
  println('Reducer: middleAction');
  final MainState newState = state.clone();
  newState.middleActionReducerCalled = true;
  return newState;
}

MainState _onEndAction(MainState state, Action action) {
  println('Reducer: endAction');
  final MainState newState = state.clone();
  newState.endActionReducerCalled = true;
  return newState;
}
