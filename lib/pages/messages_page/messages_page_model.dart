import '/flutter_flow/flutter_flow_util.dart';
import 'messages_page_widget.dart' show MessagesPageWidget;
import 'package:flutter/material.dart';

class MessagesPageModel extends FlutterFlowModel<MessagesPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
