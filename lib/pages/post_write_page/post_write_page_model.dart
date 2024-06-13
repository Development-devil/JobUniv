import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'post_write_page_widget.dart' show PostWritePageWidget;
import 'package:flutter/material.dart';

class PostWritePageModel extends FlutterFlowModel<PostWritePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  String? _titleTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '제목을 입력해야 합니다.';
    }

    return null;
  }

  // State field(s) for Keyword widget.
  FocusNode? keywordFocusNode;
  TextEditingController? keywordTextController;
  String? Function(BuildContext, String?)? keywordTextControllerValidator;
  // Stores action output result for [Backend Call - API (chatgpt)] action in AI_assistent widget.
  ApiCallResponse? apiResult12p;
  // State field(s) for Contents widget.
  FocusNode? contentsFocusNode;
  TextEditingController? contentsTextController;
  String? Function(BuildContext, String?)? contentsTextControllerValidator;
  String? _contentsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '내용을 입력해야 합니다.';
    }

    return null;
  }

  // State field(s) for CareerFields widget.
  FocusNode? careerFieldsFocusNode;
  TextEditingController? careerFieldsTextController;
  String? Function(BuildContext, String?)? careerFieldsTextControllerValidator;
  String? _careerFieldsTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '모집 분야를 입력해야 합니다.';
    }

    return null;
  }

  // State field(s) for Count widget.
  FocusNode? countFocusNode;
  TextEditingController? countTextController;
  String? Function(BuildContext, String?)? countTextControllerValidator;
  String? _countTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '모집 인원을 입력해야 합니다.';
    }

    if (!RegExp('^[1-9][0-9]*\$').hasMatch(val)) {
      return '모집 인원은 숫자여야 합니다.';
    }
    return null;
  }

  // State field(s) for RequiredSkills widget.
  FocusNode? requiredSkillsFocusNode;
  TextEditingController? requiredSkillsTextController;
  String? Function(BuildContext, String?)?
      requiredSkillsTextControllerValidator;
  String? _requiredSkillsTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '필수 기술 스택을 입력해야 합니다.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    titleTextControllerValidator = _titleTextControllerValidator;
    contentsTextControllerValidator = _contentsTextControllerValidator;
    careerFieldsTextControllerValidator = _careerFieldsTextControllerValidator;
    countTextControllerValidator = _countTextControllerValidator;
    requiredSkillsTextControllerValidator =
        _requiredSkillsTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    titleFocusNode?.dispose();
    titleTextController?.dispose();

    keywordFocusNode?.dispose();
    keywordTextController?.dispose();

    contentsFocusNode?.dispose();
    contentsTextController?.dispose();

    careerFieldsFocusNode?.dispose();
    careerFieldsTextController?.dispose();

    countFocusNode?.dispose();
    countTextController?.dispose();

    requiredSkillsFocusNode?.dispose();
    requiredSkillsTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
