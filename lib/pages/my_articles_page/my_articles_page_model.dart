import '/flutter_flow/flutter_flow_util.dart';
import 'my_articles_page_widget.dart' show MyArticlesPageWidget;
import 'package:flutter/material.dart';

class MyArticlesPageModel extends FlutterFlowModel<MyArticlesPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
