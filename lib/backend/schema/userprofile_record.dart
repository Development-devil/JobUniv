import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class UserprofileRecord extends FirestoreRecord {
  UserprofileRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "university" field.
  String? _university;
  String get university => _university ?? '';
  bool hasUniversity() => _university != null;

  // "skills" field.
  List<String>? _skills;
  List<String> get skills => _skills ?? const [];
  bool hasSkills() => _skills != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _department = snapshotData['department'] as String?;
    _university = snapshotData['university'] as String?;
    _skills = getDataList(snapshotData['skills']);
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userprofile');

  static Stream<UserprofileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserprofileRecord.fromSnapshot(s));

  static Future<UserprofileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserprofileRecord.fromSnapshot(s));

  static UserprofileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserprofileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserprofileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserprofileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserprofileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserprofileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserprofileRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? department,
  String? university,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'department': department,
      'university': university,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserprofileRecordDocumentEquality implements Equality<UserprofileRecord> {
  const UserprofileRecordDocumentEquality();

  @override
  bool equals(UserprofileRecord? e1, UserprofileRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.department == e2?.department &&
        e1?.university == e2?.university &&
        listEquality.equals(e1?.skills, e2?.skills) &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(UserprofileRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.department,
        e?.university,
        e?.skills,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is UserprofileRecord;
}
