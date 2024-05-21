import 'package:first/bloc/regsiter_bloc/regsiter_event.dart';
import 'package:first/bloc/regsiter_bloc/regsiter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/register_model.dart';
import '../../repository/register_repository.dart';

class RegisterBloc extends Bloc<RegisterEvent,RegisterState>
{
  RegisterModel? registerModel;
  RegisterRepository registerRepository = RegisterRepository();

  RegisterBloc(): super(InitialState())
  {
    on<RegisterEvent>((event, emit)
    async {
      if(event is SetDataToRegisterEvent)
      {
        emit(RegisterInProgressState());
        try
        {
          registerModel = await registerRepository.setDataToRegisterRegister(
              email: event.email,
              password: event.password,
          );
          emit(RegisterDataIsLoadedState(registerModel: registerModel!));
        }
        catch(e)
        {
          emit(RegisterErrorState(e.toString()));
        }
      }
    });
  }
}