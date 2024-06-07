import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'category_page_model.dart';
export 'category_page_model.dart';

class CategoryPageWidget extends StatefulWidget {
  const CategoryPageWidget({super.key});

  @override
  State<CategoryPageWidget> createState() => _CategoryPageWidgetState();
}

class _CategoryPageWidgetState extends State<CategoryPageWidget> {
  late CategoryPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF9F9F9),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF9F9F9),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              'JobUniv',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Sarina',
                    color: const Color(0xFF5CDA96),
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Text(
                      'Board',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('MyArticlesPage');
                  },
                  child: ListTile(
                    leading: const Icon(
                      Icons.article_outlined,
                      color: Color(0xFF6BA1E1),
                    ),
                    title: Text(
                      'My articles',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    dense: false,
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('MyApplyPage');
                  },
                  child: ListTile(
                    leading: const Icon(
                      Icons.chat_bubble_outline_rounded,
                      color: Color(0xFF30CA93),
                    ),
                    title: Text(
                      'My applys',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    dense: false,
                  ),
                ),
                const Divider(
                  height: 36.0,
                  thickness: 1.0,
                  color: Color(0xFFDDDDDD),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Text(
                      '구인구직',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'BoardPage',
                      queryParameters: {
                        'categoryparam': serializeParam(
                          '프로젝트',
                          ParamType.String,
                        ),
                        'sortBy': serializeParam(
                          '최신글 순',
                          ParamType.String,
                        ),
                        'sortkeytype': serializeParam(
                          1,
                          ParamType.int,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: ListTile(
                    title: Text(
                      '프로젝트 구인구직',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                    dense: false,
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'BoardPage',
                      queryParameters: {
                        'categoryparam': serializeParam(
                          '아르바이트',
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: ListTile(
                    title: Text(
                      '아르바이트 구인구직',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                    dense: false,
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'BoardPage',
                      queryParameters: {
                        'categoryparam': serializeParam(
                          '공모전',
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: ListTile(
                    title: Text(
                      '공모전 구인구직',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                    dense: false,
                  ),
                ),
                const Divider(
                  height: 36.0,
                  thickness: 1.0,
                  color: Color(0xFFDDDDDD),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Text(
                      '홍보',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'BoardPage',
                      queryParameters: {
                        'categoryparam': serializeParam(
                          '동아리',
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: ListTile(
                    title: Text(
                      '동아리 홍보',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                    dense: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
