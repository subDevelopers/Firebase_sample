import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';

class CardModel {
  String cardId;
  String company;
  String cardNumber;
  String cardexpDate;
  String cvc;

  CardModel({this.cardId, this.company, this.cardNumber, this.cardexpDate,this.cvc});

  UserModel.fromDocumentSnapshot({DocumentSnapshot documentSnapshot}) {
    cardId = documentSnapshot.documentID;
    company = documentSnapshot["company"];
    cardNumber = documentSnapshot["cardNumber"];
    cardexpDate = documentSnapshot["cardexpDate"];
    cvc = documentSnapshot["cvc"];
  }
}