import 'package:firebase_crud/models/Room.dart';


Future<void> addRoom(String Type, String roomId,HostId,maxGuest) async {
  try {
    await _firestore
        .collection("Room")
        .collection("type")
        .document(roomId)
        .add({
      'HostId': HostId,
      'maxGuest': maxGuest,
    });
  } catch (e) {
    print(e);
    rethrow;
  }
}

Stream<List<RoomModel>> RoomStream(String uid) {
  return _firestore
      .collection("Room")
      .collection("type")
      .document(roomId)
      .orderBy("remnant", descending: true)
      .snapshots()
      .map((QuerySnapshot query) {
    List<RoomModel> retVal = List();
    query.documents.forEach((element) {
      retVal.add(RoomModel.fromDocumentSnapshot(element));
    });
    return retVal;
  });
}

Future<void> updateRoom(String RoomId,List<String> guestList) async {
  try {
    _firestore
        .collection("Room")
        .document(roomId)
        .updateData({"guestList": guestList});
  } catch (e) {
    print(e);
    rethrow;
  }
}
