import 'dart:convert';

import '../models/singleuser_model.dart';
import 'package:http/http.dart'as http;

class SingleuserService{
  Future<SingleUserModel>getDataToSingleUserService()async{
    final response = await http.get(Uri.parse('https://reqres.in/api/users/2'),
        headers: <String,String>
        {
        "Content-type": "application/json",
        "Accept": "application/json",
        },
    );

    if(response.statusCode == 200)
    {
      final data = jsonDecode(response.body);
      return SingleUserModel.fromJson(data);
    }
    else
    {
      throw Exception('${response.statusCode} : ${response.reasonPhrase}'
      );
    }



  }
}