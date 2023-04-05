import 'package:first/models/register_model.dart';

abstract class RegisterState{}

class InitialState extends RegisterState{}

class RegisterInProgressState extends RegisterState{}

class RegisterDataIsLoadedState extends RegisterState
{
  RegisterModel registerModel;

  RegisterDataIsLoadedState({required this.registerModel});
}


class RegisterErrorState extends RegisterState
{
  String error;
  RegisterErrorState(this.error);
}