
import 'dart:convert';

class LoginUsertaskModel {
  LoginUsertaskModel({

    required this.statusCode,
    required this.isSuccess,
    required this.message,
    required this.data,
    required this.error,

  });

  int statusCode;
  bool isSuccess;
  String message;
  Data data;
  String error;

  factory LoginUsertaskModel.fromRawJson(String str) => LoginUsertaskModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginUsertaskModel.fromJson(Map<String, dynamic> json) => LoginUsertaskModel(
    statusCode: json["statusCode"],
    isSuccess: json["isSuccess"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
    error: json["error"],
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "isSuccess": isSuccess,
    "message": message,
    "data": data.toJson(),
    "error": error,
  };
}

class Data {
  Data({
    required this.token,
    required this.superAdminId,
    required this.superAdminName,
    required this.email,
  });

  String token;
  int superAdminId;
  String superAdminName;
  String email;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    token: json["token"],
    superAdminId: json["superAdminId"],
    superAdminName: json["superAdminName"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "superAdminId": superAdminId,
    "superAdminName": superAdminName,
    "email": email,
  };
}
