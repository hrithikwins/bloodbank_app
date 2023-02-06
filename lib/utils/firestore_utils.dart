import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireStoreMethods {
  static FirebaseFirestore db = FirebaseFirestore.instance;
  // static UserCredential userCredential;

  // add data to firestore
  static Future<String> addDataToFirestore(
    String collectionName,
    Map<String, dynamic> data,
  ) async {
    late String response;
// FIXME: add a response type variable
    await db
        .collection(collectionName)
        .add(data) //POST METHOD
        .then(
          (DocumentReference doc) => {
            response = doc.id,
          },
        )
        .catchError((onError) => {response = onError.toString()});

    return response;
    // something after this would be executed only after the top await is done
  }

  static Future<void> readDataFromFirestore() async {
    await db.collection("users").get().then(
      //GET METHOD

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
    await db.collection(collectionName).doc(id).set(
        data,
        SetOptions(
            merge: isMerge)); // merge FALSE -> PUT .... merge TRUE -> PATCH
  }

  static Future<void> deleteData(String id, String collectionName) async {
    await db
        .collection(collectionName)
        .doc(id)
        .delete()
        .then((value) => print("Deleted"));
  }
}
