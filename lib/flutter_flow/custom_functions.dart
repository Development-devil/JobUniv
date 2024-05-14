import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? newCustomFunction() {
  // Get String? argument to post an article, create a document in firebase DB
  void postArticle(String? article) {
    if (article == null || article.isEmpty) {
      return;
    }

    final post = createPostStruct(initialPosttime: DateTime.now());

    final data = post.toMap();
    data['article'] = article;

    FirebaseFirestore.instance
        .collection('posts')
        .add(data)
        .then((value) => print('Post added'))
        .catchError((error) => print('Failed to add post: $error'));
  }

  return null;
}
