import 'package:water/Base/network/network-mappers.dart';

class VisitDetailsModel extends BaseMappable {
  String? jsonrpc;
  String? id;
  Result? result;

  VisitDetailsModel({this.jsonrpc, this.id, this.result});

  VisitDetailsModel.fromJson(Map<String, dynamic> json) {
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
    return VisitDetailsModel(result: result,jsonrpc: jsonrpc,id: id);
  }
}

class Result {
  int? statusCode;
  bool? isError;
  String? message;
  List<VisitDetails>? visitDetails;

  Result({this.statusCode, this.isError, this.message, this.visitDetails});

  Result.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    isError = json['is_error'];
    message = json['message'];
    if (json['result'] != null) {
      visitDetails = <VisitDetails>[];
      json['result'].forEach((v) {
        visitDetails!.add(new VisitDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status_code'] = this.statusCode;
    data['is_error'] = this.isError;
    data['message'] = this.message;
    if (this.visitDetails != null) {
      data['result'] = this.visitDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class VisitDetails {
 var customerName;
 var customerNumber;
 var customerAddress;
 var customerVatNumber;
 var customerWebsite;
 var totalAmountDue;
 var totalSales;
 var totalRefund;
 var totalPayment;
 var long;
 var lat;
 String? shopName;
 String? customerRegistrationNumber;
 List<String>? images;
  VisitDetails(
      {this.customerName,
        this.customerNumber,
        this.customerAddress,
        this.customerVatNumber,
        this.customerWebsite,
        this.totalAmountDue,
        this.totalSales,
        this.totalRefund,
        this.totalPayment,
        this.customerRegistrationNumber,
        this.images,
        this.shopName,
      this.long,
      this.lat});

  VisitDetails.fromJson(Map<String, dynamic> json) {
    customerName = json['customer_name'];
    customerNumber = json['customer_number'];
    customerAddress = json['customer_address'];
    customerVatNumber = json['customer_vat_number'];
    customerWebsite = json['customer_website'];
    totalAmountDue = json['total_amount_due'];
    totalSales = json['total_sales'];
    totalRefund = json['total_refund'];
    totalPayment = json['total_payment'];
    long = json['long'];
    lat = json['lat'];
    shopName = json['shop_name'];
    customerRegistrationNumber = json['customer_registration_number'];
    images = json['images'].cast<String>();

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer_name'] = this.customerName;
    data['customer_number'] = this.customerNumber;
    data['customer_address'] = this.customerAddress;
    data['customer_vat_number'] = this.customerVatNumber;
    data['customer_website'] = this.customerWebsite;
    data['total_amount_due'] = this.totalAmountDue;
    data['total_sales'] = this.totalSales;
    data['total_refund'] = this.totalRefund;
    data['total_payment'] = this.totalPayment;
    data['long'] = this.long;
    data['lat'] = this.lat;
    data['shop_name'] = this.shopName;
    data['customer_registration_number'] = this.customerRegistrationNumber;
    data['images'] = this.images;
    return data;
  }
}