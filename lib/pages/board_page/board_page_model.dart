import '/flutter_flow/flutter_flow_util.dart';
import 'board_page_widget.dart' show BoardPageWidget;
import 'package:flutter/material.dart';

class BoardPageModel extends FlutterFlowModel<BoardPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
