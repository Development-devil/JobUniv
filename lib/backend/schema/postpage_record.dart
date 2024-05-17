import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostpageRecord extends FirestoreRecord {
  PostpageRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "category" field.
  bool? _category;
  bool get category => _category ?? false;
  bool hasCategory() => _category != null;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "contents" field.
  String? _contents;
  String get contents => _contents ?? '';
  bool hasContents() => _contents != null;

  // "CareerFields" field.
  String? _careerFields;
  String get careerFields => _careerFields ?? '';
  bool hasCareerFields() => _careerFields != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  bool hasCount() => _count != null;

  // "RequiredSkills" field.
  String? _requiredSkills;
  String get requiredSkills => _requiredSkills ?? '';
  bool hasRequiredSkills() => _requiredSkills != null;

  // "day" field.
  DateTime? _day;
  DateTime? get day => _day;
  bool hasDay() => _day != null;

  // "writer" field.
  String? _writer;
  String get writer => _writer ?? '';
  bool hasWriter() => _writer != null;

  void _initializeFields() {
    _category = snapshotData['category'] as bool?;
    _title = snapshotData['Title'] as String?;
    _contents = snapshotData['contents'] as String?;
    _careerFields = snapshotData['CareerFields'] as String?;
    _count = castToType<int>(snapshotData['count']);
    _requiredSkills = snapshotData['RequiredSkills'] as String?;
    _day = snapshotData['day'] as DateTime?;
    _writer = snapshotData['writer'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('postpage');

  static Stream<PostpageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostpageRecord.fromSnapshot(s));

  static Future<PostpageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostpageRecord.fromSnapshot(s));

  static PostpageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PostpageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostpageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostpageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostpageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostpageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostpageRecordData({
  bool? category,
  String? title,
  String? contents,
  String? careerFields,
  int? count,
  String? requiredSkills,
  DateTime? day,
  String? writer,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'category': category,
      'Title': title,
      'contents': contents,
      'CareerFields': careerFields,
      'count': count,
      'RequiredSkills': requiredSkills,
      'day': day,
      'writer': writer,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostpageRecordDocumentEquality implements Equality<PostpageRecord> {
  const PostpageRecordDocumentEquality();

  @override
  bool equals(PostpageRecord? e1, PostpageRecord? e2) {
    return e1?.category == e2?.category &&
        e1?.title == e2?.title &&
        e1?.contents == e2?.contents &&
        e1?.careerFields == e2?.careerFields &&
        e1?.count == e2?.count &&
        e1?.requiredSkills == e2?.requiredSkills &&
        e1?.day == e2?.day &&
        e1?.writer == e2?.writer;
  }

  @override
  int hash(PostpageRecord? e) => const ListEquality().hash([
        e?.category,
        e?.title,
        e?.contents,
        e?.careerFields,
        e?.count,
        e?.requiredSkills,
        e?.day,
        e?.writer
      ]);

  @override
  bool isValidKey(Object? o) => o is PostpageRecord;
}
