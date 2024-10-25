import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water/Authentication/data/repositories/login_repository.dart';
import 'package:water/Base/Helper/app_event.dart';
import 'package:water/Base/Helper/app_state.dart';
import 'package:water/Base/common/shared_preference_manger.dart';

import '../../../../Base/validator.dart';

class LoginBloc extends Bloc<AppEvent,AppState> with Validator {

  LoginBloc() :super(Start()) {
    on<loginClickEvent>(_onLogin);
  }

  Future<void> _onLogin(loginClickEvent event,
      Emitter<AppState> emit) async {
    emit(Loading());
    var response = await loginRepository.login(
        siginEntity: event.loginEntity
    );
print("response : ${response}");
   try{
      if (response.result!.status ==  "success") {
        print("USER ID : ${ response.result!.data!.id}");
        sharedPreferenceManager.writeData(CachingKey.TYPE, response.result!.data!.type);
        sharedPreferenceManager.writeData(CachingKey.USER_ID, response.result!.data!.id);
        sharedPreferenceManager.writeData(CachingKey.USER_NAME, response.result!.data!.name);
        sharedPreferenceManager.writeData(CachingKey.MOBILE, response.result!.data!.mobile);
        emit(LoginDone(model: response));
      } else {
        emit(LoginErrorLoading(message: response.result!.message));
      }
    }catch(e){
      emit(LoginErrorLoading(message: "${e.toString()}"));
    }

  }


}

LoginBloc loginBloc = new LoginBloc();


