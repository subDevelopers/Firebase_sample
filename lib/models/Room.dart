import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String Roomid;
  String type;
  String startDate;
  String endDate;
  String payDate;
  List<String> userList;

  UserModel({this.Roomid, this.type, this.startDate, this.endDate,this.payDate,this.userList});

  UserModel.fromDocumentSnapshot({DocumentSnapshot documentSnapshot}) {
    Roomid = documentSnapshot.documentID;
    type = documentSnapshot["type"];
    startDate = documentSnapshot["startDate"];
    endDate = documentSnapshot["endDate"];
    payDate = documentSnapshot["payDate"];
    userList = documentSnapshot["userList"];

  }
}