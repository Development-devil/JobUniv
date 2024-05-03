import '/components/tag/tag_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'card36_task_item_widget.dart' show Card36TaskItemWidget;
import 'package:flutter/material.dart';

class Card36TaskItemModel extends FlutterFlowModel<Card36TaskItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for tag component.
  late TagModel tagModel;

  @override
  void initState(BuildContext context) {
    tagModel = createModel(context, () => TagModel());
  }

  @override
  void dispose() {
    tagModel.dispose();
  }
}
