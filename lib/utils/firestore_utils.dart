import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreMethods {
  static FirebaseFirestore db = FirebaseFirestore.instance;

  // add data to firestore
  static Future<String> addDataToFirestore(
      String collectionName, Map<String, dynamic> data) async {
    late String response;
// TODO: add a response type variable
    await db
        .collection(collectionName)
        .add(data)
        .then(
          (DocumentReference doc) => {response = doc.id},
        )
        .catchError((onError) => {response = onError.toString()});

    return response;
    // something after this would be executed only after the top await is done
  }

  static Future<void> readDataFromFirestore() async {
    await db.collection("users").get().then(
      (QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          print(doc.data());
          // return doc.data();
        });
      },
    );
  }

  static Future<void> updateOrCreateFirestoreData(
      String id, String collectionName, Map<String, dynamic> data,
      {bool isMerge = false}) async {
    await db
        .collection(collectionName)
        .doc(id)
        .set(data, SetOptions(merge: isMerge));
  }
}
