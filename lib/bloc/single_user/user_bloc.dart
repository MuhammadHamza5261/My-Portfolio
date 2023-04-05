import 'package:first/bloc/single_user/user_event.dart';
import 'package:first/bloc/single_user/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/singleuser_model.dart';
import '../../repository/singleuser_repository.dart';

class Singleuserbloc extends Bloc<UserEvent,UserState>{
  SingleUserModel? userModel;
  SingleuserRepository? userRepository = SingleuserRepository();


  Singleuserbloc():super(InitialState()){

    on<UserEvent>((event, emit) async {
      if (event is SetDataToUserEvent) {
        emit(UserInProgressState());
        try {
          userModel = await userRepository!.setDatatoSingleSingle();
      emit(UserDataIsLoadedState(userModel: userModel!));
      }
      catch(e)
      {
      emit(UserErrorState('Something went wrong')
      );
      }
    }
    });
  }
}