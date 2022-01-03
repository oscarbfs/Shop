import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  static const _url =
      'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyDGPWy6Br9n2I9St22fT5bggLXiSuEu5P4';

  Future<void> _authenticate(
      String email, String password, String urlFragment) async {
    final url =
            'https://identitytoolkit.googleapis.com/v1/accounts:$urlFragment?key=AIzaSyDGPWy6Br9n2I9St22fT5bggLXiSuEu5P4',
        response = await http.post(
          Uri.parse(url),
          body: jsonEncode({
            'email': email,
            'password': password,
            'returnSecureToken': true,
          }),
        );
    print(jsonDecode(response.body));
  }

  Future<void> signup(String email, String password) async {
    _authenticate(email, password, 'signUp');
  }

  Future<void> login(String email, String password) async {
    _authenticate(email, password, 'signInWithPassword');
  }
}
