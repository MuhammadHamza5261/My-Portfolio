import 'package:first/models/register_model.dart';
import 'package:first/services/register_service.dart';

class RegisterRepository
{
  RegisterModel? registerModel ;
  RegisterService registerService = RegisterService();

  Future<RegisterModel> setDataToRegisterRegister({required String email, required String password})
  async {
    registerModel = await registerService.setDataToRegisterService(email: email, password: password) ;
    return registerModel!;
  }
}