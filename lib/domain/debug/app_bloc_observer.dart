import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  // @override
  // void onChange(Cubit cubit, Change change) {
  //   debugPrint(change.toString());
  //   super.onChange(cubit, change);
  // }

  // @override
  // void onClose(Cubit cubit) {
  //   super.onClose(cubit);
  // }

  // @override
  // void onCreate(Cubit cubit) {
  //   debugPrint(cubit.toString());
  //   super.onCreate(cubit);
  // }

  // @override
  // void onError(Cubit cubit, Object error, StackTrace stackTrace) {
  //   super.onError(cubit, error, stackTrace);
  // }

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
  void onCreate(Bloc bloc) {
    debugPrint(bloc.toString());
    super.onCreate(bloc);
  }
}
