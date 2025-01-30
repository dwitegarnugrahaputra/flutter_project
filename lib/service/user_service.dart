import 'dart:convert';
import 'package:finaal_project/service/user.dart';
import 'package:http/http.dart' as http;


class UserService{
  final String baseUrl = 'https://reqres.in/api';

  Future<List<Users>> fetchUser() async{
    final response = await http.get(Uri.parse('$baseUrl/users?page=1'));

    if(response.statusCode == 200){
      final Map<String,dynamic> data = json.decode(response.body);
      final List<dynamic> userJson = data['data'];

      return userJson.map((json) => Users.fromJson(json)).toList();
    }else{
      throw Exception('Failed to load users');
    }
  }
}