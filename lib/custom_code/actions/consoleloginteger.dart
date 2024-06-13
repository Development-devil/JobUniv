// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future consoleloginteger(int? output) async {
  // Add your function code here!
  if (output == null) {
    print('console log (argument is null)');
  } else {
    try {
      print(output);
    } catch (e) {
      print('print(arg) failed');
    }
  }
}