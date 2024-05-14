import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC-MUWRIlND5U6tr43-rzfKyx8DzdzMXtU",
            authDomain: "jobuniv-315d1.firebaseapp.com",
            projectId: "jobuniv-315d1",
            storageBucket: "jobuniv-315d1.appspot.com",
            messagingSenderId: "357774427239",
            appId: "1:357774427239:web:d3edf77b118feffa8080c2",
            measurementId: "G-CD2G62C2TM"));
  } else {
    await Firebase.initializeApp();
  }
}
