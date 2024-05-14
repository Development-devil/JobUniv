import '/flutter_flow/flutter_flow_util.dart';
import 'applicant_list_page_widget.dart' show ApplicantListPageWidget;
import 'package:flutter/material.dart';

class ApplicantListPageModel extends FlutterFlowModel<ApplicantListPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
