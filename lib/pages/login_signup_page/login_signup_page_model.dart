import '/flutter_flow/flutter_flow_util.dart';
import 'login_signup_page_widget.dart' show LoginSignupPageWidget;
import 'package:flutter/material.dart';

class LoginSignupPageModel extends FlutterFlowModel<LoginSignupPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '이메일을 입력해야 합니다.';
    }

    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '비밀번호를 입력해야 합니다.';
    }

    return null;
  }

  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode;
  TextEditingController? emailAddressCreateTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextControllerValidator;
  String? _emailAddressCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '이메일을 입력해야 합니다.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return '알맞는 형식이 아닙니다.';
    }
    return null;
  }

  // State field(s) for nickname_Create widget.
  FocusNode? nicknameCreateFocusNode;
  TextEditingController? nicknameCreateTextController;
  String? Function(BuildContext, String?)?
      nicknameCreateTextControllerValidator;
  String? _nicknameCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '이름을 입력해야 합니다.';
    }

    return null;
  }

  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  String? _passwordCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '비밀번호를 입력해야 합니다.';
    }

    return null;
  }

  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;
  String? _passwordConfirmTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '비밀번호 확인을 입력해야 합니다.';
    }

    return null;
  }

  // State field(s) for university_Create widget.
  FocusNode? universityCreateFocusNode;
  TextEditingController? universityCreateTextController;
  String? Function(BuildContext, String?)?
      universityCreateTextControllerValidator;
  String? _universityCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '대학을 입력해야 합니다.';
    }

    return null;
  }

  // State field(s) for department_Create widget.
  FocusNode? departmentCreateFocusNode;
  TextEditingController? departmentCreateTextController;
  String? Function(BuildContext, String?)?
      departmentCreateTextControllerValidator;
  String? _departmentCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '학과를 입력해야 합니다.';
    }

    return null;
  }

  // State field(s) for phonenumber_Create widget.
  FocusNode? phonenumberCreateFocusNode;
  TextEditingController? phonenumberCreateTextController;
  String? Function(BuildContext, String?)?
      phonenumberCreateTextControllerValidator;
  String? _phonenumberCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '휴대폰 번호를 입력해야 합니다.';
    }

    if (!RegExp('^([0-9])+-?([0-9])+-?([0-9])+\$').hasMatch(val)) {
      return '알맞는 형식이 아닙니다.';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    emailAddressCreateTextControllerValidator =
        _emailAddressCreateTextControllerValidator;
    nicknameCreateTextControllerValidator =
        _nicknameCreateTextControllerValidator;
    passwordCreateVisibility = false;
    passwordCreateTextControllerValidator =
        _passwordCreateTextControllerValidator;
    passwordConfirmVisibility = false;
    passwordConfirmTextControllerValidator =
        _passwordConfirmTextControllerValidator;
    universityCreateTextControllerValidator =
        _universityCreateTextControllerValidator;
    departmentCreateTextControllerValidator =
        _departmentCreateTextControllerValidator;
    phonenumberCreateTextControllerValidator =
        _phonenumberCreateTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    emailAddressCreateFocusNode?.dispose();
    emailAddressCreateTextController?.dispose();

    nicknameCreateFocusNode?.dispose();
    nicknameCreateTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();

    universityCreateFocusNode?.dispose();
    universityCreateTextController?.dispose();

    departmentCreateFocusNode?.dispose();
    departmentCreateTextController?.dispose();

    phonenumberCreateFocusNode?.dispose();
    phonenumberCreateTextController?.dispose();
  }
}
