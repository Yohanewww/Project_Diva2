import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Auth with ChangeNotifier {
  // String _token;
  // DateTime _expireDate;
  // String _userID;

  Future<void> _authenticate(String? email, String? password, String urlSegment) async {
    final url = Uri.parse(
        'https://identitytoolkit.googleapis.com/v1/$urlSegment?key=AIzaSyCvfOeAgE1MoJxavacT_r-d31cIfintytw');
    final response = await http.post(url,
        body: json.encode(
          {'email': email,
            'password': password,
            'returnSecureToken': true}
      )
    );
  }

  Future<void> SignUp(String? email, String? password) async {
  return _authenticate(email, password, 'accounts:signUp');
  }

  Future<void> Login(String? email, String? password) async {
  return _authenticate(email, password, 'accounts:signInWithPassword');
  }
}
