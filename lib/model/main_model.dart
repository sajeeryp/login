import 'package:flutter/material.dart';

class sample {
  int? responseCode;
  Data? data;
  String? message;
  int? statusCode;

  sample({this.responseCode, this.data, this.message, this.statusCode});

   factory sample.fromJson(Map<String, dynamic> json) {
     return sample (
    responseCode : json['responseCode'],
    data : json['data'] != null ? new Data.fromJson(json['data']) : null,
    message : json['message'],
    statusCode : json['statusCode'],
    );
  }


}

class Data {
  String? customerName;
  String? email;

  Data({this.customerName, this.email});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
    customerName : json['customerName'],
    email : json['email'],
    );
  }

}