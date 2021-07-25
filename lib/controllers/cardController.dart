import 'package:get/get.dart';
import 'package:firebase_crud/controllers/authController.dart';
import 'package:firebase_crud/controllers/bindings/authBinding.dart';
import 'package:firebase_crud/models/card.dart';
import 'package:firebase_crud/services/databaseCard.dart';

class TodoController extends GetxController {
  Rx<List<CardModel>> cardList = Rx<List<CardModel>>();

  List<CardModel> get card => cardList.value;

  @override
  void onInit() {
    String uid = Get.find<AuthController>().user.uid;
    cardList
        .bindStream(Database().cardStream(uid)); //stream coming from firebase
  }
}