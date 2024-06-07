// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> delelteSubDocuments(
    DocumentReference<Object?> docRef, String whereCollection) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  WriteBatch batch = FirebaseFirestore.instance.batch();

  print('deleteSubDocuments Start\n');

  try {
    return await firestore
        .collection(whereCollection)
        .where('postpageRef', isEqualTo: docRef)
        .get()
        .then((querySnapshot) {
      querySnapshot.docs.forEach((document) {
        batch.delete(document.reference);
      });
      return batch.commit();
    });
  } catch (e) {
    print('Error querying collection: $e');
    return null;
  }
}
