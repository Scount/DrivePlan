part of 'loginview_bloc.dart';

@immutable
abstract class LoginviewEvent extends Equatable {
  const LoginviewEvent();
}
class TestLogin extends LoginviewEvent {
  const TestLogin();
  @override
  // TODO: implement props
  List<Object> get props => [];
}