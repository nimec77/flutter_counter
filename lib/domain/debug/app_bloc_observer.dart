import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    debugPrint(event.toString());
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint(transition.toString());
    super.onTransition(bloc, transition);
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint(bloc.toString());
    super.onClose(bloc);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint(bloc.toString());
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('$bloc change: $change');
    super.onChange(bloc, change);
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint(bloc.toString());
    super.onCreate(bloc);
  }
}
