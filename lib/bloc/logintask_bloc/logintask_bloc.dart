import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/login_task_model.dart';
import '../../repository/logintask_repository.dart';
import 'logintask_event.dart';
import 'logintask_state.dart';

class Logintask_Bloc extends Bloc<LoginTaskEvent,LoginTaskState>{

    LoginUsertaskModel? loginusertaskmodel;
    Logintask_repository logintaskrespository = Logintask_repository();


    Logintask_Bloc():super(InitialState()){

      on<LoginTaskEvent>((event,emit) async{

        if(event is SetDataToLoginTaskEvent)
        {
          emit(LoginTaskInProgressState());
          try{
            loginusertaskmodel = await logintaskrespository.setDatatoTaskTask(
              email: event.email,
              passsword: event.password,
            );
                 ///check the status is true then navigate to another screen ///This is statement is can decide the thue user will be navigate or not!!!

            if(loginusertaskmodel!.isSuccess ==true){
              emit(LoginTaskDataIsLoadedState(loginusertaskmodel: loginusertaskmodel!));
            }

            else{
              emit(LoginTaskDataIsNotLoadedState(msg: loginusertaskmodel!.message));
            }


        }
        catch(e)
        {
          print("$e");
            emit(LoginTaskErrorState(e.toString()));
        }

        }
      });



}

}