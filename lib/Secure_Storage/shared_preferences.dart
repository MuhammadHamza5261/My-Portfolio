import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesClient {
  static const String _kUserName = 'userName';
  static const String _kPassword = 'password';
  static const String _kSetBool = 'setbool';

   ///creating a setter
 Future setCredential(String userName, String password) async
 {
   final sharedPref = await SharedPreferences.getInstance();
   await sharedPref.setString(_kUserName, userName);
   await sharedPref.setString(_kPassword, password);
 }

 ///creating a setter of bool
 Future setBoolValues(bool setbool) async
 {
   final sharedPref = await SharedPreferences.getInstance();
   await sharedPref.setBool(_kSetBool, setbool);
 }
 ///creating a getter of bool

  Future<bool> getBoolName() async{
   SharedPreferences prefs = await SharedPreferences.getInstance();
   bool?  setbool = prefs.getBool(_kSetBool);
   return setbool!;
  }


   ///creating a getter of username
  Future<String> getUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userName = prefs.getString(_kUserName);
    return userName!;
  }

  ///creating a getter of password
  Future<String> getPassword() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? password = prefs.getString(_kPassword);
    return password!;
  }

   ///create a remove the values
    removeValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

}