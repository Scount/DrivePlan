part of 'loginview_bloc.dart';

@immutable
abstract class LoginviewState extends Equatable {
  const LoginviewState();
  
  @override
  List<Object> get props => [];
}

class LoginviewInitial extends LoginviewState {
  const LoginviewInitial();
  @override
  List<Object> get props =>[];
}
