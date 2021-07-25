import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';

class CardModel {
  String accountsdId;
  String bank;
  String accountNumber;
  bool validation;
  String cvc;

  CardModel({this.accountNumber, this.bank, this.accountsdId, this.validation,this.cvc});

  UserModel.fromDocumentSnapshot({DocumentSnapshot documentSnapshot}) {
    accountsdId= documentSnapshot.documentID;
    bank = documentSnapshot["bank"];
    accountNumber = documentSnapshot["accountNumber"];
    validation = documentSnapshot["validation"];
    cvc = documentSnapshot["cvc"];
  }
}