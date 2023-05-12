import 'package:shared_preferences/shared_preferences.dart';
import '../../models/login_task_model.dart';
class SharedPrefClient{

  static const String token ='token';
  static const String id = 'id';
  static const String name = 'name';
  static const String email = 'email';

  Future<void> setLoginModel(LoginUsertaskModel loginUserTaskModel) async
  {
    final sharedPref = await SharedPreferences.getInstance();

    await sharedPref.setString(token, loginUserTaskModel.data.token);
    await sharedPref.setString(email, loginUserTaskModel.data.email);
    await sharedPref.setInt(id, loginUserTaskModel.data.superAdminId);
    await sharedPref.setString(name, loginUserTaskModel.data.superAdminName);

  }
}

///Shared preferences are used for locally storage and they can store data