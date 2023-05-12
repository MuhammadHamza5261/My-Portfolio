import 'package:first/services/logintask_service.dart';
import '../models/login_task_model.dart';

class Logintask_repository{
  LoginUsertaskModel? loginusertaskmodel;
  Logintask_Service logintask_service = Logintask_Service();


  Future<LoginUsertaskModel> setDatatoTaskTask({required String email,required String passsword})async{
    loginusertaskmodel = await logintask_service.setDataToLoginTaskService(email: email, password: passsword);
    return loginusertaskmodel!;
  }
}