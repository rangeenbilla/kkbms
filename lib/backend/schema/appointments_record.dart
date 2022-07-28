import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'appointments_record.g.dart';

abstract class AppointmentsRecord
    implements Built<AppointmentsRecord, AppointmentsRecordBuilder> {
  static Serializer<AppointmentsRecord> get serializer =>
      _$appointmentsRecordSerializer;

  @nullable
  String get appointmentName;

  @nullable
  String get appointmentDescription;

  @nullable
  DocumentReference get appointmentPerson;

  @nullable
  String get appointmentType;

  @nullable
  String get appointmentEmail;

  @nullable
  double get appointmentContact;

  @nullable
  @BuiltValueField(wireName: 'AppointmentTime')
  DateTime get appointmentTime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AppointmentsRecordBuilder builder) => builder
    ..appointmentName = ''
    ..appointmentDescription = ''
    ..appointmentType = ''
    ..appointmentEmail = ''
    ..appointmentContact = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appointments');

  static Stream<AppointmentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AppointmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AppointmentsRecord._();
  factory AppointmentsRecord(
          [void Function(AppointmentsRecordBuilder) updates]) =
      _$AppointmentsRecord;

  static AppointmentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAppointmentsRecordData({
  String appointmentName,
  String appointmentDescription,
  DocumentReference appointmentPerson,
  String appointmentType,
  String appointmentEmail,
  double appointmentContact,
  DateTime appointmentTime,
}) =>
    serializers.toFirestore(
        AppointmentsRecord.serializer,
        AppointmentsRecord((a) => a
          ..appointmentName = appointmentName
          ..appointmentDescription = appointmentDescription
          ..appointmentPerson = appointmentPerson
          ..appointmentType = appointmentType
          ..appointmentEmail = appointmentEmail
          ..appointmentContact = appointmentContact
          ..appointmentTime = appointmentTime));
