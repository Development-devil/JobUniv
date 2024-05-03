import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'card_post_item_model.dart';
export 'card_post_item_model.dart';

class CardPostItemWidget extends StatefulWidget {
  const CardPostItemWidget({super.key});

  @override
  State<CardPostItemWidget> createState() => _CardPostItemWidgetState();
}

class _CardPostItemWidgetState extends State<CardPostItemWidget> {
  late CardPostItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardPostItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: const Align(
        alignment: AlignmentDirectional(-1.0, -1.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [],
        ),
      ),
    );
  }
}
