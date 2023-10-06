import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:simple_todo_application/models/user_model.dart';

class ApiRequest{
  String endpoint= "https://jsonplaceholder.typicode.com/todos";
  Future <List<Data>> getUsers() async {
    Response response = await get(Uri.parse(endpoint));

    if(response.statusCode==200)
    {
      final List result = jsonDecode(response.body);

      return result.map((e) =>Data.fromJson(e)).toList();
    }
    else
    {
      throw Exception(response.reasonPhrase);
    }
  }
}

final userProvider = Provider<ApiRequest>((ref)=>ApiRequest());