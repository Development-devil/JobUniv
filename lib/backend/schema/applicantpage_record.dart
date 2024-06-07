import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ApplicantpageRecord extends FirestoreRecord {
  ApplicantpageRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "career" field.
  String? _career;
  String get career => _career ?? '';
  bool hasCareer() => _career != null;

  // "motive" field.
  String? _motive;
  String get motive => _motive ?? '';
  bool hasMotive() => _motive != null;

  // "skillList" field.
  List<String>? _skillList;
  List<String> get skillList => _skillList ?? const [];
  bool hasSkillList() => _skillList != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "postwriter" field.
  String? _postwriter;
  String get postwriter => _postwriter ?? '';
  bool hasPostwriter() => _postwriter != null;

  // "posttitle" field.
  String? _posttitle;
  String get posttitle => _posttitle ?? '';
  bool hasPosttitle() => _posttitle != null;

  // "singleUser" field.
  DocumentReference? _singleUser;
  DocumentReference? get singleUser => _singleUser;
  bool hasSingleUser() => _singleUser != null;

  // "postpageRef" field.
  DocumentReference? _postpageRef;
  DocumentReference? get postpageRef => _postpageRef;
  bool hasPostpageRef() => _postpageRef != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
    _career = snapshotData['career'] as String?;
    _motive = snapshotData['motive'] as String?;
    _skillList = getDataList(snapshotData['skillList']);
    _department = snapshotData['department'] as String?;
    _postwriter = snapshotData['postwriter'] as String?;
    _posttitle = snapshotData['posttitle'] as String?;
    _singleUser = snapshotData['singleUser'] as DocumentReference?;
    _postpageRef = snapshotData['postpageRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('applicantpage');

  static Stream<ApplicantpageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ApplicantpageRecord.fromSnapshot(s));

  static Future<ApplicantpageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ApplicantpageRecord.fromSnapshot(s));

  static ApplicantpageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ApplicantpageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ApplicantpageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ApplicantpageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ApplicantpageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ApplicantpageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createApplicantpageRecordData({
  String? name,
  String? email,
  String? career,
  String? motive,
  String? department,
  String? postwriter,
  String? posttitle,
  DocumentReference? singleUser,
  DocumentReference? postpageRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'email': email,
      'career': career,
      'motive': motive,
      'department': department,
      'postwriter': postwriter,
      'posttitle': posttitle,
      'singleUser': singleUser,
      'postpageRef': postpageRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ApplicantpageRecordDocumentEquality
    implements Equality<ApplicantpageRecord> {
  const ApplicantpageRecordDocumentEquality();

  @override
  bool equals(ApplicantpageRecord? e1, ApplicantpageRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.career == e2?.career &&
        e1?.motive == e2?.motive &&
        listEquality.equals(e1?.skillList, e2?.skillList) &&
        e1?.department == e2?.department &&
        e1?.postwriter == e2?.postwriter &&
        e1?.posttitle == e2?.posttitle &&
        e1?.singleUser == e2?.singleUser &&
        e1?.postpageRef == e2?.postpageRef;
  }

  @override
  int hash(ApplicantpageRecord? e) => const ListEquality().hash([
        e?.name,
        e?.email,
        e?.career,
        e?.motive,
        e?.skillList,
        e?.department,
        e?.postwriter,
        e?.posttitle,
        e?.singleUser,
        e?.postpageRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ApplicantpageRecord;
}
