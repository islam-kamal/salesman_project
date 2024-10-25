import 'package:water/Authentication/domain/entities/login_entity.dart';
import 'package:water/Profile/domain/entities/resetPassword_entity.dart';

abstract class AppEvent {}

class click extends AppEvent{
  click();
}

class AppDrawrEvent extends AppEvent{
  final String drawerType;
  AppDrawrEvent({required this.drawerType});

}

class loginClickEvent extends AppEvent{
  final LoginEntity  loginEntity;
  loginClickEvent({required this.loginEntity});
}

class GetProfileEvent extends AppEvent{}
class ResetPasswordClickEvent extends AppEvent{
  final ResetPasswordEntity  resetPasswordEntity;
  ResetPasswordClickEvent({required this.resetPasswordEntity});
}


// TODAY VISITS
class GetTodayVisitsEvent extends AppEvent{}
class GetTodayVisitsDetailsEvent extends AppEvent{
  final String? visit_id;
  GetTodayVisitsDetailsEvent({this.visit_id});
}

// Categories
class GetCategoriesEvent extends AppEvent{
  GetCategoriesEvent();
}

// PRODUCTS
class GetProductsEvent extends AppEvent{
  GetProductsEvent();
}

// HISTORY INVOICES
class GetHistoryInvoiceEvent extends AppEvent{
  GetHistoryInvoiceEvent();
}

// Create Order
class CreateOrderEvent extends AppEvent{
  CreateOrderEvent();
}
// Create Collection
class CreateCollectionEvent extends AppEvent{
  CreateCollectionEvent();
}