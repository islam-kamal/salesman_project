import 'package:water/Base/network/network-mappers.dart';

class ProfileModel extends BaseMappable{
  bool? success;
  String? message;
  int? responseCode;
  String? domain;
  String? objectName;
  int? userId;
  Permissions? permissions;
  int? modelId;
  List<Data>? data;

  ProfileModel(
      {this.success,
        this.message,
        this.responseCode,
        this.domain,
        this.objectName,
        this.userId,
        this.permissions,
        this.modelId,
        this.data});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    responseCode = json['responseCode'];
    domain = json['domain'];
    objectName = json['object_name'];
    userId = json['user_id'];
    permissions = json['permissions'] != null
        ? new Permissions.fromJson(json['permissions'])
        : null;
    modelId = json['model_id'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    data['responseCode'] = this.responseCode;
    data['domain'] = this.domain;
    data['object_name'] = this.objectName;
    data['user_id'] = this.userId;
    if (this.permissions != null) {
      data['permissions'] = this.permissions!.toJson();
    }
    data['model_id'] = this.modelId;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  Mappable fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    responseCode = json['responseCode'];
    domain = json['domain'];
    objectName = json['object_name'];
    userId = json['user_id'];
    permissions = json['permissions'] != null
        ? new Permissions.fromJson(json['permissions'])
        : null;
    modelId = json['model_id'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    return ProfileModel(success: success,data: data,message: message,domain: domain,modelId: modelId,objectName: objectName,
    permissions: permissions,responseCode: responseCode,userId: userId);
  }
}

class Permissions {
  bool? read;
  bool? write;
  bool? delete;
  bool? create;

  Permissions({this.read, this.write, this.delete, this.create});

  Permissions.fromJson(Map<String, dynamic> json) {
    read = json['read'];
    write = json['write'];
    delete = json['delete'];
    create = json['create'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['read'] = this.read;
    data['write'] = this.write;
    data['delete'] = this.delete;
    data['create'] = this.create;
    return data;
  }
}

class Data {
  List<MessageFollowerIds>? messageFollowerIds;
  List<MessageIds>? messageIds;
  List<ManagerId>? managerId;
  bool? isManager;
  String? name;
  String? mobile;
  String? login;
  String? password;
  String? type;
  String? gender;
  String? idNumber;
  String? employeeCode;
  String? position;
  String? hireDate;
  int? id;
  List<CreateUid>? createUid;
  String? createDate;
  List<WriteUid>? writeUid;
  String? writeDate;

  Data(
      {this.messageFollowerIds,
        this.messageIds,
        this.managerId,
        this.isManager,
        this.name,
        this.mobile,
        this.login,
        this.password,
        this.type,
        this.gender,
        this.idNumber,
        this.employeeCode,
        this.position,
        this.hireDate,
        this.id,
        this.createUid,
        this.createDate,
        this.writeUid,
        this.writeDate});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['message_follower_ids'] != null) {
      messageFollowerIds = <MessageFollowerIds>[];
      json['message_follower_ids'].forEach((v) {
        messageFollowerIds!.add(new MessageFollowerIds.fromJson(v));
      });
    }
    if (json['message_ids'] != null) {
      messageIds = <MessageIds>[];
      json['message_ids'].forEach((v) {
        messageIds!.add(new MessageIds.fromJson(v));
      });
    }
    if (json['manager_id'] != null) {
      managerId = <ManagerId>[];
      json['manager_id'].forEach((v) {
        managerId!.add(new ManagerId.fromJson(v));
      });
    }
    isManager = json['is_manager'];
    name = json['name'];
    mobile = json['mobile'];
    login = json['login'];
    password = json['password'];
    type = json['type'];
    gender = json['gender'];
    idNumber = json['id_number'];
    employeeCode = json['employee_code'];
    position = json['position'];
    hireDate = json['hire_date'];
    id = json['id'];
    if (json['create_uid'] != null) {
      createUid = <CreateUid>[];
      json['create_uid'].forEach((v) {
        createUid!.add(new CreateUid.fromJson(v));
      });
    }
    createDate = json['create_date'];
    if (json['write_uid'] != null) {
      writeUid = <WriteUid>[];
      json['write_uid'].forEach((v) {
        writeUid!.add(new WriteUid.fromJson(v));
      });
    }
    writeDate = json['write_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.messageFollowerIds != null) {
      data['message_follower_ids'] =
          this.messageFollowerIds!.map((v) => v.toJson()).toList();
    }
    if (this.messageIds != null) {
      data['message_ids'] = this.messageIds!.map((v) => v.toJson()).toList();
    }
    if (this.managerId != null) {
      data['manager_id'] = this.managerId!.map((v) => v.toJson()).toList();
    }
    data['is_manager'] = this.isManager;
    data['name'] = this.name;
    data['mobile'] = this.mobile;
    data['login'] = this.login;
    data['password'] = this.password;
    data['type'] = this.type;
    data['gender'] = this.gender;
    data['id_number'] = this.idNumber;
    data['employee_code'] = this.employeeCode;
    data['position'] = this.position;
    data['hire_date'] = this.hireDate;
    data['id'] = this.id;
    if (this.createUid != null) {
      data['create_uid'] = this.createUid!.map((v) => v.toJson()).toList();
    }
    data['create_date'] = this.createDate;
    if (this.writeUid != null) {
      data['write_uid'] = this.writeUid!.map((v) => v.toJson()).toList();
    }
    data['write_date'] = this.writeDate;
    return data;
  }
}

class MessageFollowerIds {
  int? id;
  String? name;

  MessageFollowerIds({this.id, this.name});

  MessageFollowerIds.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class MessageIds {
  int? id;

  MessageIds({this.id});

  MessageIds.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    return data;
  }
}

class ManagerId {
  int? id;
  String? name;
  ManagerId({this.id,this.name});

  ManagerId.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class CreateUid {
  int? id;
  String? name;
  CreateUid({this.id,this.name});

  CreateUid.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class WriteUid {
  int? id;
  String? name;
  WriteUid({this.id,this.name});

  WriteUid.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}