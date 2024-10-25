import 'package:water/Base/network/network-mappers.dart';


class CreateOrderResponseModel extends BaseMappable {
  String? jsonrpc;
  int? id;
  int? statusCode;
  bool? isError;
  String? message;
  ResultData? result;

  CreateOrderResponseModel({this.jsonrpc, this.id, this.result,this.statusCode,this.isError,this.message});

  CreateOrderResponseModel.fromJson(Map<String, dynamic> json) {
    jsonrpc = json['jsonrpc'];
    id = json['id'];
    statusCode= json['result']['status_code'];
    isError= json['result']['is_error'];
    message= json['result']['message'];
    result= json['result']['is_error'] == false
        ? ResultData.fromJson(json['result']['result'])
        : null;
  }

  Map<String, dynamic> toJson() {
    return {
      'jsonrpc': jsonrpc,
      'id': id,
      'result': {
        'status_code': statusCode,
        'is_error': isError,
        'message': message,
        'result': isError == false ? result?.toJson() : result?.errorResult
      }
    };

}

  @override
  Mappable fromJson(Map<String, dynamic> json) {
    jsonrpc = json['jsonrpc'];
    id = json['id'];
    statusCode= json['result']['status_code'];
    isError= json['result']['is_error'];
    message= json['result']['message'];
    result= json['result']['is_error'] == false
        ? ResultData.fromJson(json['result']['result'])
        : null;
    return CreateOrderResponseModel(id: id,result: result,jsonrpc: jsonrpc,message: message,isError: isError,statusCode: statusCode);
  }
}

class ResultData {
  final int? orderId;
  final int? invoiceId;
  final String? invoicePdf;
  final int? errorResult; // to store error result if necessary

  ResultData({this.orderId, this.invoiceId, this.invoicePdf, this.errorResult});

  factory ResultData.fromJson(dynamic json) {
    if (json is int) {
      return ResultData(errorResult: json); // Error case where 'result' is an int
    } else {
      return ResultData(
        orderId: json['order_id'],
        invoiceId: json['invoice_id'],
        invoicePdf: json['invoice_pdf'],
      );
    }
  }
  Object toJson() {
    if (errorResult != null) {
      // If it's an error, just return the error result
      return errorResult!;
    } else {
      return {
        'order_id': orderId,
        'invoice_id': invoiceId,
        'invoice_pdf': invoicePdf,
      };
    }
  }
}
