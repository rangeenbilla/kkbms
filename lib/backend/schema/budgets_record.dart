import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'budgets_record.g.dart';

abstract class BudgetsRecord
    implements Built<BudgetsRecord, BudgetsRecordBuilder> {
  static Serializer<BudgetsRecord> get serializer => _$budgetsRecordSerializer;

  @nullable
  String get budetName;

  @nullable
  DateTime get budgetCreated;

  @nullable
  String get budgetDescription;

  @nullable
  DocumentReference get userBudgets;

  @nullable
  String get budgetSpent;

  @nullable
  DateTime get budgetStartDate;

  @nullable
  String get budgetTime;

  @nullable
  double get budgetAmount;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BudgetsRecordBuilder builder) => builder
    ..budetName = ''
    ..budgetDescription = ''
    ..budgetSpent = ''
    ..budgetTime = ''
    ..budgetAmount = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('budgets');

  static Stream<BudgetsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BudgetsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BudgetsRecord._();
  factory BudgetsRecord([void Function(BudgetsRecordBuilder) updates]) =
      _$BudgetsRecord;

  static BudgetsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBudgetsRecordData({
  String budetName,
  DateTime budgetCreated,
  String budgetDescription,
  DocumentReference userBudgets,
  String budgetSpent,
  DateTime budgetStartDate,
  String budgetTime,
  double budgetAmount,
}) =>
    serializers.toFirestore(
        BudgetsRecord.serializer,
        BudgetsRecord((b) => b
          ..budetName = budetName
          ..budgetCreated = budgetCreated
          ..budgetDescription = budgetDescription
          ..userBudgets = userBudgets
          ..budgetSpent = budgetSpent
          ..budgetStartDate = budgetStartDate
          ..budgetTime = budgetTime
          ..budgetAmount = budgetAmount));
