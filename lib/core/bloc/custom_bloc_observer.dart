import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBlocObserver extends BlocObserver {
  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    debugPrint('bloc ${bloc.runtimeType} (onClose)');
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    debugPrint('bloc ${bloc.runtimeType} (onCreate)');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    debugPrint('bloc ${bloc.runtimeType} (onError)');
    debugPrint('bloc $error\n$stackTrace');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint('bloc ${bloc.runtimeType} (onEvent) => $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint('bloc ${bloc.runtimeType} (onTransition)');
    debugPrint(
        'bloc ${transition.event} => ${transition.currentState} => ${transition.nextState}');
  }
}
