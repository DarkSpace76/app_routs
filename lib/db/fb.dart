import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:zwork/resource/storage.dart';

Future<dynamic> addBookmark(String uid, String idVcancy) {
  return FirebaseFirestore.instance
      .collection('users')
      .doc(uid)
      .collection('bookmarks')
      .doc(idVcancy)
      .set({});
}

Future<dynamic> removeBookmark(String uid, String idVcancy) {
  return FirebaseFirestore.instance
      .collection('users')
      .doc(uid)
      .collection('bookmarks')
      .doc(idVcancy)
      .delete();
}

Future<QuerySnapshot<Map<String, dynamic>>> getBookmark(String uid) {
  return FirebaseFirestore.instance
      .collection('users')
      .doc(uid)
      .collection('bookmarks')
      .get();
}
