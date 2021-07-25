import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String id;
  String name;
  String nickname;
  String email;
  String sex;
  String phone;

  UserModel({this.id, this.name, this.email,this.phone,this.nickname,this.sex});

  UserModel.fromDocumentSnapshot({DocumentSnapshot documentSnapshot}) {
    id = documentSnapshot.documentID;
    name = documentSnapshot["name"];
    email = documentSnapshot["email"];
    sex = documentSnapshot["sex"];
    nickname = documentSnapshot["nickname"];
    phone = documentSnapshot["phone"];

  }
}