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

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "viewcount" field.
  int? _viewcount;
  int get viewcount => _viewcount ?? 0;
  bool hasViewcount() => _viewcount != null;

  // "likecount" field.
  int? _likecount;
  int get likecount => _likecount ?? 0;
  bool hasLikecount() => _likecount != null;

  // "userRefer" field.
  DocumentReference? _userRefer;
  DocumentReference? get userRefer => _userRefer;
  bool hasUserRefer() => _userRefer != null;

  void _initializeFields() {
    _title = snapshotData['Title'] as String?;
    _contents = snapshotData['contents'] as String?;
    _careerFields = snapshotData['CareerFields'] as String?;
    _count = castToType<int>(snapshotData['count']);
    _requiredSkills = snapshotData['RequiredSkills'] as String?;
    _day = snapshotData['day'] as DateTime?;
    _category = snapshotData['category'] as String?;
    _viewcount = castToType<int>(snapshotData['viewcount']);
    _likecount = castToType<int>(snapshotData['likecount']);
    _userRefer = snapshotData['userRefer'] as DocumentReference?;
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
  String? title,
  String? contents,
  String? careerFields,
  int? count,
  String? requiredSkills,
  DateTime? day,
  String? category,
  int? viewcount,
  int? likecount,
  DocumentReference? userRefer,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Title': title,
      'contents': contents,
      'CareerFields': careerFields,
      'count': count,
      'RequiredSkills': requiredSkills,
      'day': day,
      'category': category,
      'viewcount': viewcount,
      'likecount': likecount,
      'userRefer': userRefer,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostpageRecordDocumentEquality implements Equality<PostpageRecord> {
  const PostpageRecordDocumentEquality();

  @override
  bool equals(PostpageRecord? e1, PostpageRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.contents == e2?.contents &&
        e1?.careerFields == e2?.careerFields &&
        e1?.count == e2?.count &&
        e1?.requiredSkills == e2?.requiredSkills &&
        e1?.day == e2?.day &&
        e1?.category == e2?.category &&
        e1?.viewcount == e2?.viewcount &&
        e1?.likecount == e2?.likecount &&
        e1?.userRefer == e2?.userRefer;
  }

  @override
  int hash(PostpageRecord? e) => const ListEquality().hash([
        e?.title,
        e?.contents,
        e?.careerFields,
        e?.count,
        e?.requiredSkills,
        e?.day,
        e?.category,
        e?.viewcount,
        e?.likecount,
        e?.userRefer
      ]);

  @override
  bool isValidKey(Object? o) => o is PostpageRecord;
}
