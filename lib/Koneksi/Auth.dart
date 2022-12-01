import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  signup(String email, String password) async {
    Uri url = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=[API_KEY]");

    var response = await http.post(
      url,
      body: json.encode({
        "email": email,
        "password": password,
        "returnSecureToken": true,
      }),
    );

    print(json.decode(response.body));
  }

  login(String email, String password) async {
    Uri url = Uri.parse("http://10.0.0.5/api/server.php?function=login");

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: json.encode({"email": email, "sandi": password}),
    );

    print(json.decode(response.body.toString()));
    final output = json.decode(response.body);

    if (response.statusCode == 200) {
      return output;
    } else {
      print('Gagal login');
    }
  }
}
