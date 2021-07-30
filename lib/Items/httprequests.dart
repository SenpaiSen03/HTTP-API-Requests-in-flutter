import 'dart:convert';
import 'package:http/http.dart';
import 'package:bdapplication/Items/userjsonlist.dart';

class HttpService {
  var usersURL = Uri.parse("https://jsonplaceholder.typicode.com/users");

  Future<List<Users>> getUsers() async {
    Response res = await get(usersURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Users> users = body
          .map(
            (dynamic item) => Users.fromJson(item),
          )
          .toList();
      print(users);
      return users;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}
