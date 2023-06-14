import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/login_model.dart';
import '../../repository/login_repository.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent,LoginState>{
  LoginModel? loginModel;
  LoginRepository loginRepository = LoginRepository();

  LoginBloc():super(InitialState()){
    on<LoginEvent>((event, emit) async{
      if(event is SetDataToLoginEvent)
        {
          emit(LoginInProgressState());
          try{
            loginModel = await loginRepository.setDatatoLoginLogin(

                email: event.email,
                password: event.password,

            );
            emit(LoginDataIsLoadedState(loginModel: loginModel!));
          }
          catch(e)
          {
            emit(LoginErrorState(e.toString()));
          }
        }
        });
  }
  }