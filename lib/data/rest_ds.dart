import 'dart:async';

import 'package:flutter_app/models/user.dart';
import 'package:flutter_app/utils/network_util.dart';


class RestDatasource {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "http://www.mocky.io/v2/5e0faf71340000869f2d8166";
  static final LOGIN_URL = BASE_URL + "";
  static final _API_KEY = "12345";

  Future<User> login(String username, String password) {
    return _netUtil.post(LOGIN_URL, body: {
      "token": _API_KEY,
      "username": username,
      "password": password
    }).then((dynamic res) {
      print(res.toString());
      if(res["error"]) throw new Exception(res["error_msg"]);
      return new User.map(res["user"]);
    });
  }
}

