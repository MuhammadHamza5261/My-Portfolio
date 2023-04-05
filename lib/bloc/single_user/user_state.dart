import '../../models/singleuser_model.dart';

abstract class UserState{}

class InitialState extends UserState{}

class UserInProgressState extends UserState{}

class UserDataIsLoadedState extends UserState
{

  SingleUserModel userModel;
  UserDataIsLoadedState({required this.userModel});


}


class UserErrorState extends UserState
{
  String error;
  UserErrorState(this.error);

}