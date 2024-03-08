import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoursesRecord extends FirestoreRecord {
  CoursesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Course_Title" field.
  String? _courseTitle;
  String get courseTitle => _courseTitle ?? '';
  bool hasCourseTitle() => _courseTitle != null;

  // "Course_Descripton" field.
  String? _courseDescripton;
  String get courseDescripton => _courseDescripton ?? '';
  bool hasCourseDescripton() => _courseDescripton != null;

  // "Course_Image" field.
  String? _courseImage;
  String get courseImage => _courseImage ?? '';
  bool hasCourseImage() => _courseImage != null;

  // "Course_Price" field.
  double? _coursePrice;
  double get coursePrice => _coursePrice ?? 0.0;
  bool hasCoursePrice() => _coursePrice != null;

  // "Course_Rating" field.
  double? _courseRating;
  double get courseRating => _courseRating ?? 0.0;
  bool hasCourseRating() => _courseRating != null;

  // "Course_Level" field.
  String? _courseLevel;
  String get courseLevel => _courseLevel ?? '';
  bool hasCourseLevel() => _courseLevel != null;

  // "Recommended" field.
  bool? _recommended;
  bool get recommended => _recommended ?? false;
  bool hasRecommended() => _recommended != null;

  // "Focus" field.
  String? _focus;
  String get focus => _focus ?? '';
  bool hasFocus() => _focus != null;

  // "Element1" field.
  String? _element1;
  String get element1 => _element1 ?? '';
  bool hasElement1() => _element1 != null;

  // "Element2" field.
  String? _element2;
  String get element2 => _element2 ?? '';
  bool hasElement2() => _element2 != null;

  // "Authors_Email" field.
  String? _authorsEmail;
  String get authorsEmail => _authorsEmail ?? '';
  bool hasAuthorsEmail() => _authorsEmail != null;

  void _initializeFields() {
    _courseTitle = snapshotData['Course_Title'] as String?;
    _courseDescripton = snapshotData['Course_Descripton'] as String?;
    _courseImage = snapshotData['Course_Image'] as String?;
    _coursePrice = castToType<double>(snapshotData['Course_Price']);
    _courseRating = castToType<double>(snapshotData['Course_Rating']);
    _courseLevel = snapshotData['Course_Level'] as String?;
    _recommended = snapshotData['Recommended'] as bool?;
    _focus = snapshotData['Focus'] as String?;
    _element1 = snapshotData['Element1'] as String?;
    _element2 = snapshotData['Element2'] as String?;
    _authorsEmail = snapshotData['Authors_Email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Courses');

  static Stream<CoursesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoursesRecord.fromSnapshot(s));

  static Future<CoursesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoursesRecord.fromSnapshot(s));

  static CoursesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CoursesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoursesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoursesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoursesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoursesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoursesRecordData({
  String? courseTitle,
  String? courseDescripton,
  String? courseImage,
  double? coursePrice,
  double? courseRating,
  String? courseLevel,
  bool? recommended,
  String? focus,
  String? element1,
  String? element2,
  String? authorsEmail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Course_Title': courseTitle,
      'Course_Descripton': courseDescripton,
      'Course_Image': courseImage,
      'Course_Price': coursePrice,
      'Course_Rating': courseRating,
      'Course_Level': courseLevel,
      'Recommended': recommended,
      'Focus': focus,
      'Element1': element1,
      'Element2': element2,
      'Authors_Email': authorsEmail,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoursesRecordDocumentEquality implements Equality<CoursesRecord> {
  const CoursesRecordDocumentEquality();

  @override
  bool equals(CoursesRecord? e1, CoursesRecord? e2) {
    return e1?.courseTitle == e2?.courseTitle &&
        e1?.courseDescripton == e2?.courseDescripton &&
        e1?.courseImage == e2?.courseImage &&
        e1?.coursePrice == e2?.coursePrice &&
        e1?.courseRating == e2?.courseRating &&
        e1?.courseLevel == e2?.courseLevel &&
        e1?.recommended == e2?.recommended &&
        e1?.focus == e2?.focus &&
        e1?.element1 == e2?.element1 &&
        e1?.element2 == e2?.element2 &&
        e1?.authorsEmail == e2?.authorsEmail;
  }

  @override
  int hash(CoursesRecord? e) => const ListEquality().hash([
        e?.courseTitle,
        e?.courseDescripton,
        e?.courseImage,
        e?.coursePrice,
        e?.courseRating,
        e?.courseLevel,
        e?.recommended,
        e?.focus,
        e?.element1,
        e?.element2,
        e?.authorsEmail
      ]);

  @override
  bool isValidKey(Object? o) => o is CoursesRecord;
}
