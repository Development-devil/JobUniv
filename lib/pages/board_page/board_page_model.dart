import '/flutter_flow/flutter_flow_util.dart';
import 'board_page_widget.dart' show BoardPageWidget;
import 'package:flutter/material.dart';

class BoardPageModel extends FlutterFlowModel<BoardPageWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> docRefs = [];
  void addToDocRefs(DocumentReference item) => docRefs.add(item);
  void removeFromDocRefs(DocumentReference item) => docRefs.remove(item);
  void removeAtIndexFromDocRefs(int index) => docRefs.removeAt(index);
  void insertAtIndexInDocRefs(int index, DocumentReference item) =>
      docRefs.insert(index, item);
  void updateDocRefsAtIndex(int index, Function(DocumentReference) updateFn) =>
      docRefs[index] = updateFn(docRefs[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - getpostpagecollection] action in BoardPage widget.
  List<DocumentReference>? pagepageCollection;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
