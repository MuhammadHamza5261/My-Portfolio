import 'package:first/models/login_model.dart';
import '../services/login_service.dart';

class LoginRepository{
  LoginModel? loginModel;
  LoginService loginService = LoginService();

  Future<LoginModel> setDatatoLoginLogin({required String email, required String password})async{
    loginModel = await  loginService.setDataToLoginService(email: email, password: password);
    return loginModel!;
  }
}