import 'package:bloc/bloc.dart';
import 'package:water/Base/Helper/app_event.dart';
import 'package:water/Base/Helper/app_state.dart';

class AppBloc extends Bloc<AppEvent,AppState>{
  AppBloc() : super(Start()){
  on<AppDrawrEvent>(_onAppDrawerChangedFun);

  }

  Future<void> _onAppDrawerChangedFun(AppDrawrEvent event, Emitter<AppState> emit) async {
    try {
      emit( AppDrawerDoneState(
        drawerType: event.drawerType
      ));

    } catch (e) {
      emit(
        ErrorLoading(message: "Failed to fetch data. Is your device online ?",
        ),
      );
    }
  }

}
AppBloc appBloc = AppBloc();