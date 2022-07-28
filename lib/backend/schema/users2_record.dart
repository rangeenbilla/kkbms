import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users2_record.g.dart';

abstract class Users2Record
    implements Built<Users2Record, Users2RecordBuilder> {
  static Serializer<Users2Record> get serializer => _$users2RecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(Users2RecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users2');

  static Stream<Users2Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<Users2Record> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  Users2Record._();
  factory Users2Record([void Function(Users2RecordBuilder) updates]) =
      _$Users2Record;

  static Users2Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsers2RecordData({
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        Users2Record.serializer,
        Users2Record((u) => u
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
