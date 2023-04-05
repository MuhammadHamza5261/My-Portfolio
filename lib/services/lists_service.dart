import 'dart:convert';
import '../models/lists_model.dart';
import 'package:http/http.dart'as http;

class ListService
{
  Future<ListsModel> getDataToListsService()
  async{
    final response = await http.get(Uri.parse('https://reqres.in/api/users?page=2'),
        headers: <String,String>
        {
        "Content-type": "application/json",
        "Accept": "application/json",
        },
        // body: jsonEncode(<String,dynamic>
        // {
        // "page": page,
        // "perPage": perPage,
        // "total": total,
        // "totalPages": totalPages,
        // "data": data,
        // "support": support,
        // })
    );

    if(response.statusCode == 200)
    {
      final data = jsonDecode(response.body);
      return ListsModel.fromJson(data);
    }
    else
    {
      throw Exception('${response.statusCode} : ${response.reasonPhrase}');
    }
  }
}