import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water/Base/Helper/app_event.dart';
import 'package:water/Base/Helper/app_state.dart';
import 'package:water/Profile/data/repositories/profile_repository.dart';

import '../../../../Base/validator.dart';

class ProfileBloc extends Bloc<AppEvent,AppState> with Validator {

  ProfileBloc() :super(Start()) {
    on<GetProfileEvent>(_onGetProfileData);
    on<ResetPasswordClickEvent>(_onResetPassword);
  }

  Future<void> _onGetProfileData(GetProfileEvent event,
      Emitter<AppState> emit) async {
    emit(Loading());
    var response = await profileRepository.getProfileDetails();
    try{
      if (response!.success! ) {
        emit(GetProfileDone(profileModel: response));
      } else {
        emit(GetProfileErrorLoading(message: response.message));
      }
    }catch(e){
      emit(GetProfileErrorLoading(message: e.toString()));
    }

  }

  Future<void> _onResetPassword(ResetPasswordClickEvent event,
      Emitter<AppState> emit) async {
    emit(Loading());
    var response = await profileRepository.resetPassword(
        resetPasswordEntity: event.resetPasswordEntity
    );

    try{
      if (response.result!.status ==  "success") {
        emit(RestPasswordDone(model: response));
      } else {
        emit(RestPasswordErrorLoading(message: response.result!.message));
      }
    }catch(e){
      emit(RestPasswordErrorLoading(message: "${e.toString()}"));
    }

  }

}

ProfileBloc profileBloc = new ProfileBloc();


