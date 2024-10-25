import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water/Base/Helper/app_event.dart';
import 'package:water/Base/Helper/app_state.dart';
import 'package:water/Profile/data/repositories/profile_repository.dart';
import 'package:water/Visits/data/repositories/today_visits_repository.dart';

import '../../../../Base/validator.dart';

class TodayVisitsBloc extends Bloc<AppEvent,AppState> with Validator {

  TodayVisitsBloc() :super(Start()) {
    on<GetTodayVisitsEvent>(_onTodayVisits);
    on<GetTodayVisitsDetailsEvent>(_onTodayVisitsDetails);
  }

  Future<void> _onTodayVisits(GetTodayVisitsEvent event,
      Emitter<AppState> emit) async {
    emit(Loading());
    var response = await todayVisitsRepository.getTodayVisits();
    print("response : ${response!.result!.result}");
    try{
      if (response!.result!.statusCode! == 200 ) {
        emit(GeTodayVisitsDone(visits: response.result?.result!));
      } else {
        emit(GetTodayVisitsErrorLoading(message: response.result?.message));
      }
    }catch(e){
      emit(GetTodayVisitsErrorLoading(message: e.toString()));
    }

  }

  Future<void> _onTodayVisitsDetails(GetTodayVisitsDetailsEvent event,
      Emitter<AppState> emit) async {
    emit(Loading());
    var response = await todayVisitsRepository.getTodayVisitsDetails();
    print("response visitDetails: ${response!.result!.visitDetails![0].toJson()}");
    try{
      if (response!.result!.statusCode! == 200 ) {
        emit(GeTodayVisitDetailsDone(visitDetails: response.result?.visitDetails!));
      } else {
        emit(GetTodayVisitDetailsErrorLoading(message: response.result?.message));
      }
    }catch(e){
      emit(GetTodayVisitsErrorLoading(message: e.toString()));
    }

  }
}

TodayVisitsBloc todayVisitsBloc = new TodayVisitsBloc();


