import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_page_widget.dart' show ProfilePageWidget;
import 'package:flutter/material.dart';

class ProfilePageModel extends FlutterFlowModel<ProfilePageWidget> {
  ///  Local state fields for this page.

  int userpostscount = 0;

  int lessthancond = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Read Document] action in ProfilePage widget.
  UserprofileRecord? userprofileRef;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for skillstack widget.
  FocusNode? skillstackFocusNode;
  TextEditingController? skillstackTextController;
  String? Function(BuildContext, String?)? skillstackTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  List<PostpageRecord>? queriedPosts;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  List<ApplicantpageRecord>? queriedApplicant;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    skillstackFocusNode?.dispose();
    skillstackTextController?.dispose();
  }
}
