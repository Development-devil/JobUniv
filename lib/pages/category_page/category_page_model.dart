import '/flutter_flow/flutter_flow_util.dart';
import 'category_page_widget.dart' show CategoryPageWidget;
import 'package:flutter/material.dart';

class CategoryPageModel extends FlutterFlowModel<CategoryPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
