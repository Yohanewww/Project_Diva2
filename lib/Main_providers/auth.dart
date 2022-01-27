import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Auth with ChangeNotifier {
  // String _token;
  // DateTime _expireDate;
  // String _userID;

  Future<void> SignUp(String email, String password) async {
    final url = Uri.parse(
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=[AIzaSyCvfOeAgE1MoJxavacT_r-d31cIfintytw]');
    final response = await http.post(url,
        body: json.encode(
          {'email': email,
            'password': password,
            'returnSecureToken': true}
      )
    );
    print(json.decode(response.body));
  }
}
