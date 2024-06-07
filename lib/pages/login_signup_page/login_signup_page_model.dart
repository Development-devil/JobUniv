import '/flutter_flow/flutter_flow_util.dart';
import 'login_signup_page_widget.dart' show LoginSignupPageWidget;
import 'package:flutter/material.dart';

class LoginSignupPageModel extends FlutterFlowModel<LoginSignupPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode;
  TextEditingController? emailAddressCreateTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextControllerValidator;
  // State field(s) for nickname_Create widget.
  FocusNode? nicknameCreateFocusNode;
  TextEditingController? nicknameCreateTextController;
  String? Function(BuildContext, String?)?
      nicknameCreateTextControllerValidator;
  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;
  // State field(s) for university_Create widget.
  FocusNode? universityCreateFocusNode;
  TextEditingController? universityCreateTextController;
  String? Function(BuildContext, String?)?
      universityCreateTextControllerValidator;
  // State field(s) for department_Create widget.
  FocusNode? departmentCreateFocusNode;
  TextEditingController? departmentCreateTextController;
  String? Function(BuildContext, String?)?
      departmentCreateTextControllerValidator;
  // State field(s) for phonenumber_Create widget.
  FocusNode? phonenumberCreateFocusNode;
  TextEditingController? phonenumberCreateTextController;
  String? Function(BuildContext, String?)?
      phonenumberCreateTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordCreateVisibility = false;
    passwordConfirmVisibility = false;
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
