import 'package:first/bloc/regsiter_bloc/regsiter_state.dart';

import '../../models/login_model.dart';

abstract class LoginState{}

class InitialState extends LoginState{}

class LoginInProgressState extends LoginState{}

class LoginDataIsLoadedState extends LoginState

{
   LoginModel loginModel;

  LoginDataIsLoadedState({required this.loginModel});

}


class LoginErrorState extends LoginState
{
  String error;
  LoginErrorState(this.error);
}

