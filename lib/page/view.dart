import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('App bar'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Middle reducer called: ${state.middleActionReducerCalled}',
          ),
          Text(
            'End reducer called: ${state.endActionReducerCalled}',
          ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      tooltip: 'Increment',
      child: Icon(Icons.add),
      onPressed: () {
        dispatch(MainActionCreator.onStartAction());
      },
    ),
  );
}
