import 'package:water/Base/network/network-mappers.dart';

class CategoryModel extends BaseMappable{
  String? jsonrpc;
  String? id;
  Result? result;

  CategoryModel({this.jsonrpc, this.id, this.result});

  CategoryModel.fromJson(Map<String, dynamic> json) {
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
    return CategoryModel(id: id,jsonrpc: jsonrpc,result: result);
  }
}

class Result {
  int? statusCode;
  bool? isError;
  String? message;
  List<CategoryData>? categories;

  Result({this.statusCode, this.isError, this.message, this.categories});

  Result.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    isError = json['is_error'];
    message = json['message'];
    if (json['result'] != null) {
      categories = <CategoryData>[];
      json['result'].forEach((v) {
        categories!.add(new CategoryData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status_code'] = this.statusCode;
    data['is_error'] = this.isError;
    data['message'] = this.message;
    if (this.categories != null) {
      data['result'] = this.categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryData {
  int? id;
  String? name;
  int? productCount;
  String? image;

  CategoryData({this.id, this.name, this.productCount,this.image});

  CategoryData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    productCount = json['product_count'];
    image = json['image'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['product_count'] = this.productCount;
    data['image'] = this.image;

    return data;
  }
}