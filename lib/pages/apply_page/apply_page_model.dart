import '/flutter_flow/flutter_flow_util.dart';
import 'apply_page_widget.dart' show ApplyPageWidget;
import 'package:flutter/material.dart';

class ApplyPageModel extends FlutterFlowModel<ApplyPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for career widget.
  FocusNode? careerFocusNode;
  TextEditingController? careerTextController;
  String? Function(BuildContext, String?)? careerTextControllerValidator;
  String? _careerTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '경력을 입력해야 합니다.';
    }

    return null;
  }

  // State field(s) for motive widget.
  FocusNode? motiveFocusNode;
  TextEditingController? motiveTextController;
  String? Function(BuildContext, String?)? motiveTextControllerValidator;
  String? _motiveTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '지원 동기 및 각오를 입력해야 합니다. ';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    careerTextControllerValidator = _careerTextControllerValidator;
    motiveTextControllerValidator = _motiveTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    careerFocusNode?.dispose();
    careerTextController?.dispose();

    motiveFocusNode?.dispose();
    motiveTextController?.dispose();
  }
}
