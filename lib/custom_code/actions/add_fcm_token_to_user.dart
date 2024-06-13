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
import 'package:firebase_auth/firebase_auth.dart';

Future<void> addFcmTokenToUser(String fcmToken) async {
  // Get the current user
  User? user = FirebaseAuth.instance.currentUser;

  if (user == null) {
    throw Exception("No user is signed in.");
  }

  // Reference to the user's document in Firestore
  DocumentReference userDoc =
      FirebaseFirestore.instance.collection('users').doc(user.uid);

  // Update the user's document with the FCM token
  await userDoc.update({
    'fcmToken': fcmToken,
  });
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
