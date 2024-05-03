// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostStruct extends BaseStruct {
  PostStruct({
    DateTime? initialPosttime,
  }) : _initialPosttime = initialPosttime;

  // "initial_posttime" field.
  DateTime? _initialPosttime;
  DateTime? get initialPosttime => _initialPosttime;
  set initialPosttime(DateTime? val) => _initialPosttime = val;
  bool hasInitialPosttime() => _initialPosttime != null;

  static PostStruct fromMap(Map<String, dynamic> data) => PostStruct(
        initialPosttime: data['initial_posttime'] as DateTime?,
      );

  static PostStruct? maybeFromMap(dynamic data) =>
      data is Map ? PostStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'initial_posttime': _initialPosttime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'initial_posttime': serializeParam(
          _initialPosttime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static PostStruct fromSerializableMap(Map<String, dynamic> data) =>
      PostStruct(
        initialPosttime: deserializeParam(
          data['initial_posttime'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'PostStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PostStruct && initialPosttime == other.initialPosttime;
  }

  @override
  int get hashCode => const ListEquality().hash([initialPosttime]);
}

PostStruct createPostStruct({
  DateTime? initialPosttime,
}) =>
    PostStruct(
      initialPosttime: initialPosttime,
    );
