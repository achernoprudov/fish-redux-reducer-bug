import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<MainState> buildEffect() {
  return combineEffects(<Object, Effect<MainState>>{
    MainAction.startAction: _onStartAction,
    MainAction.middleAction: _onMiddleAction,
  });
}

void _onStartAction(Action action, Context<MainState> ctx) {
  println('Effect: startAction');
  ctx.dispatch(MainActionCreator.onMiddleAction());
}

void _onMiddleAction(Action action, Context<MainState> ctx) {
  println('Effect: middleAction');
  ctx.dispatch(MainActionCreator.onEndAction());
}
