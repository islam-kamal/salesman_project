import 'package:water/Base/network/network-mappers.dart';

class CreateCollectionResponseModel extends BaseMappable{
  String? jsonrpc;
  String? id;
  Result? result;

  CreateCollectionResponseModel({this.jsonrpc, this.id, this.result});

  CreateCollectionResponseModel.fromJson(Map<String, dynamic> json) {
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
    //result = json['result'] != null ? new Result.fromJson(json['result']) : null;
    result= json['result']['is_error'] == false
        ? Result.fromJson(json['result'])
        : null;
    return CreateCollectionResponseModel(id: id,jsonrpc: jsonrpc,result: result);
  }
}

class Result {
  int? statusCode;
  bool? isError;
  String? message;
  Data? data;

  Result({this.statusCode, this.isError, this.message, this.data});

  Result.fromJson(Map<String, dynamic> json) {
    print("json[ : ${json}");

    print("json['status_code'] : ${json['status_code']}");
    statusCode = json['status_code'];
    isError = json['is_error'];
    message = json['message'];
    data = json['result'] != null ? new Data.fromJson(json['result']) : null;
 /*   result= json['result']['is_error'] == false
        ? Data.fromJson(json['result']['result'])
        : null;*/
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status_code'] = this.statusCode;
    data['is_error'] = this.isError;
    data['message'] = this.message;
    if (this.data != null) {
      data['result'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? paymentId;
  String? paymentPdf;

  Data({this.paymentId, this.paymentPdf});

  Data.fromJson(Map<String, dynamic> json) {
    paymentId = json['payment_id'];
    paymentPdf = json['payment_pdf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['payment_id'] = this.paymentId;
    data['payment_pdf'] = this.paymentPdf;
    return data;
  }
}
