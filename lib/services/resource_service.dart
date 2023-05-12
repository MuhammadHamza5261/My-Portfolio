import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/resource_model.dart';

class Resourceservice{
  Future<ResourceModel> getDataToResponseService()
  async{
    final response  = await http.get(Uri.parse('https://reqres.in/api/unknown'),
        headers: <String,String>
        {
        "Content-type": "application/json",
        "Accept": "application/json",
        },
    );

    if(response.statusCode == 200)
    {
      final data = jsonDecode(response.body);
      return ResourceModel.fromJson(data);
    }
    else
    {
      throw Exception('${response.statusCode} : ${response.reasonPhrase}');
    }


  }

}