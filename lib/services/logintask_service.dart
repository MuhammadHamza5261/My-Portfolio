import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart'as http;
import '../models/login_task_model.dart';

class Logintask_Service{
  Future<LoginUsertaskModel> setDataToLoginTaskService({required String email, required String password})
  async{
    final response = await http.post(Uri.parse('https://veromobileapp-portal.azurewebsites.net/api/Users/v1.0/Login'),
        headers: <String,String>
        {
        "Content-type": "application/json",
        "Accept": "application/json",
        },

        body: jsonEncode(<String,dynamic>
        {
          "email": email,
          "password": password,
        })
    );
    if(response.statusCode == 200)
    {
      final data = jsonDecode(response.body);
      return LoginUsertaskModel.fromJson(data);
    }
    else
    {
      throw Exception('${response.statusCode} : ${response.reasonPhrase}');
    }

  }
}