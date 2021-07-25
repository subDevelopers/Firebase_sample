import 'package:bootpay_api/bootpay_api.dart';
import 'package:firebase_crud/controllers/authController.dart';
import 'package:firebase_crud/models/Room.dart';

void goBootpayRequest(Usermodel user, bootPaybilling item) async {

  Payload payload = Payload();
  payload.androidApplicationId = '5b8f6a4d396fa665fdc2b5e8';
  payload.iosApplicationId = '5b8f6a4d396fa665fdc2b5e9';

  payload.pg = 'nicepay';
  payload.method = 'card';
  payload.name = 'testUser';
  payload.price = 2000.0;
  payload.orderId = DateTime.now().millisecondsSinceEpoch.toString();

  UserModel user = UserModel();
  user.name = " ";
  user.email = "user1234@gmail.com";
  user.area = "서울";
  user.phone = "010-1234-4567";

  Item item1 = Item();
  item1.itemName = ""
  item1.qty = 1; // 해당 상품의 주문 수량
  item1.unique = "ITEM_CODE_MOUSE"; // 해당 상품의 고유 키
  item1.price = 1000; // 상품의 가격

  BootpayApi.request(
    context,
    payload,
    extra: extra,
    user: user,
    items: itemList,
    onDone: (String json) {
      print('onDone: $json');
    },
    onReady: (String json) {
      //flutter는 가상계좌가 발급되었을때  onReady가 호출되지 않는다. onDone에서 처리해주어야 한다.
      print('onReady: $json');
    },
    onCancel: (String json) {
      print('onCancel: $json');
    },
    onError: (String json) {
      print('onError: $json');
    },
  );
}



}


