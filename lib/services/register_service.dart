import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/register_model.dart';

class RegisterService
{
  Future<RegisterModel> setDataToRegisterService({required String email, required String password}) async
  {
    final response = await http.post(Uri.parse('https://reqres.in/api/register'),
    headers: <String,String>
    {
      "Content-type": "application/json",
      "Accept": "application/json",
    },
    body: jsonEncode(<String,dynamic>
    {
      "email": email,
      "password": password,
    }),
    );

    if(response.statusCode == 200)
    {
      final data = jsonDecode(response.body);
      return RegisterModel.fromJson(data);
    }
    else
    {
      throw Exception('${response.statusCode} : ${response.reasonPhrase}');
    }
  }
}