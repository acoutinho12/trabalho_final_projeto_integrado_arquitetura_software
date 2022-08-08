part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {
  @override
  List<Object> get props => [];
}

class Loading extends HomeState {}

class Loaded extends HomeState {
  final Products products;

  Loaded({required this.products});

  @override
  List<Object> get props => [products];
}

class Error extends HomeState {
  final String message;

  Error({required this.message});

  @override
  List<Object> get props => [message];
}