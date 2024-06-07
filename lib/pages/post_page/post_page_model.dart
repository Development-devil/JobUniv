import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'post_page_widget.dart' show PostPageWidget;
import 'package:flutter/material.dart';

class PostPageModel extends FlutterFlowModel<PostPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Read Document] action in FloatingActionButton widget.
  UserprofileRecord? useRefer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
