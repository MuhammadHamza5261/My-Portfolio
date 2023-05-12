import 'package:first/repository/login_repository.dart';

import '../../models/login_task_model.dart';

abstract class LoginTaskState{}

class InitialState extends LoginTaskState{}

class LoginTaskInProgressState extends LoginTaskState{}


class LoginTaskDataIsNotLoadedState extends LoginTaskState{
  String msg;
  LoginTaskDataIsNotLoadedState({required this.msg});
}

class LoginTaskDataIsLoadedState extends LoginTaskState
{

   LoginUsertaskModel loginusertaskmodel;

   LoginTaskDataIsLoadedState({required this.loginusertaskmodel});

}



class LoginTaskErrorState extends LoginTaskState
{
  String error;
  LoginTaskErrorState(this.error);
}
