
import 'dart:convert';

import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:water/Base/common/config.dart';
import 'package:water/Base/common/shared_preference_manger.dart';
import 'package:water/Base/network/network_util.dart';
import 'package:water/Profile/data/models/profile_model.dart';
import 'package:water/Profile/data/models/resetPassword_model.dart';
import 'package:water/Profile/domain/entities/resetPassword_entity.dart';


class ProfileRepository{

  Future<ProfileModel?> getProfileDetails() async {
    Map<String, String> headers = {
      'lang': LocalizeAndTranslate.getLanguageCode(),
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Accept-Language': LocalizeAndTranslate.getLanguageCode() == 'ar' ? 'ar-EG' : 'en-EG',

    };
    return NetworkUtil.internal().get(
        ProfileModel(),
        baseUrl + profileUrl+"?domain=[('id','=',${await sharedPreferenceManager.readInt(CachingKey.USER_ID)})]",
        headers: headers  );
  }

  Future<ResetPasswordModel> resetPassword({ResetPasswordEntity? resetPasswordEntity}) async {

    return NetworkUtil.internal().post(ResetPasswordModel(),
        baseUrl +  loginUrl,
        body: jsonEncode( {
          "login": resetPasswordEntity?.login,
          "old_password": resetPasswordEntity?.oldPassword,
          "new_password": resetPasswordEntity?.newPassword,
        }),
        headers: Map<String, String>.from({
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }));
  }
}
final profileRepository = ProfileRepository();