import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'loginview_event.dart';
part 'loginview_state.dart';

class LoginviewBloc extends Bloc<LoginviewEvent, LoginviewState> {
  LoginviewBloc() : super(LoginviewInitial());

  @override
  Stream<LoginviewState> mapEventToState(
    LoginviewEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
