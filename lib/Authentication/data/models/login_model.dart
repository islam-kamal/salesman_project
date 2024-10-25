import 'package:water/Base/network/network-mappers.dart';

class LoginModel extends BaseMappable{
  String? jsonrpc;
  String? id;
  Result? result;

  LoginModel({this.jsonrpc, this.id, this.result});

  LoginModel.fromJson(Map<String, dynamic> json) {
    jsonrpc = json['jsonrpc'];
    id = json['id'];
    result =
    json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jsonrpc'] = this.jsonrpc;
    data['id'] = this.id;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }

  @override
  Mappable fromJson(Map<String, dynamic> json) {
    jsonrpc = json['jsonrpc'];
    id = json['id'];
    result =
    json['result'] != null ? new Result.fromJson(json['result']) : null;
    return LoginModel(id: id,jsonrpc: jsonrpc,result: result);
  }
}

class Result {
  String? status;
  String? message;
  Data? data;

  Result({this.status, this.message, this.data});

  Result.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? mobile;
  bool? isManager;
  bool? managerId;
  String? type;

  Data(
      {this.id,
        this.name,
        this.mobile,
        this.isManager,
        this.managerId,
        this.type});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    isManager = json['is_manager'];
    managerId = json['manager_id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['mobile'] = this.mobile;
    data['is_manager'] = this.isManager;
    data['manager_id'] = this.managerId;
    data['type'] = this.type;
    return data;
  }
}