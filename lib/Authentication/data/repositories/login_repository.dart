

import 'dart:convert';
import 'package:water/Authentication/data/models/login_model.dart';
import 'package:water/Authentication/domain/entities/login_entity.dart';
import 'package:water/Base/common/config.dart';
import 'package:water/Base/network/network_util.dart';

class LoginRepository {

   Future<LoginModel> login({LoginEntity? siginEntity}) async {

    return NetworkUtil.internal().post(LoginModel(),
        baseUrl +  loginUrl,
        body: jsonEncode( {
          "login": siginEntity?.userName,
          "password": siginEntity?.password,
        }),
        headers: Map<String, String>.from({
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
  }

}
LoginRepository loginRepository = new LoginRepository();