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

Future<List<DocumentReference>?> getpostpagecollection(
  int sortbykey,
  String? categoryparmString,
) async {
  // sortbykey 가 1, 2, 3 이므로 1을 뺀다
  sortbykey -= 1;
  List<String> sortbykeys_To_Fieldname = ['day', 'viewcount', 'likecount'];
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  QuerySnapshot querySnapshot;

  if (categoryparmString == null) {
    try {
      querySnapshot = await firestore
          .collection('postpage')
          .orderBy(sortbykeys_To_Fieldname[sortbykey], descending: true)
          .get();
    } catch (e) {
      print('Error querying collection: $e');
      return null;
    }
  } else {
    try {
      querySnapshot = await firestore
          .collection('postpage')
          .where('category', isEqualTo: categoryparmString)
          .orderBy(sortbykeys_To_Fieldname[sortbykey], descending: true)
          .get();
    } catch (e) {
      print('Error querying collection: $e');
      return null;
    }
  }
  List<DocumentReference> ls = [];
  querySnapshot.docs.forEach((doc) {
    ls.add(doc.reference);
  });
  for (var i = 0; i < ls.length; i++) {
    print('${ls[i]}');
  }
  return ls;
}
