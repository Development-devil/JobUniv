import '/flutter_flow/flutter_flow_util.dart';
import 'my_apply_page_widget.dart' show MyApplyPageWidget;
import 'package:flutter/material.dart';

class MyApplyPageModel extends FlutterFlowModel<MyApplyPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
