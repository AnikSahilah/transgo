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
      "returnSecureToken" : true,
  }),
    );

    print(json.decode(response.body));
  }
}