// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BudgetListRecord> _$budgetListRecordSerializer =
    new _$BudgetListRecordSerializer();

class _$BudgetListRecordSerializer
    implements StructuredSerializer<BudgetListRecord> {
  @override
  final Iterable<Type> types = const [BudgetListRecord, _$BudgetListRecord];
  @override
  final String wireName = 'BudgetListRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, BudgetListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.budget;
    if (value != null) {
      result
        ..add('budget')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.budgetUser;
    if (value != null) {
      result
        ..add('budgetUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  BudgetListRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BudgetListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'budget':
          result.budget.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'budgetUser':
          result.budgetUser = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$BudgetListRecord extends BudgetListRecord {
  @override
  final BuiltList<String> budget;
  @override
  final DocumentReference<Object> budgetUser;
  @override
  final DocumentReference<Object> reference;

  factory _$BudgetListRecord(
          [void Function(BudgetListRecordBuilder) updates]) =>
      (new BudgetListRecordBuilder()..update(updates)).build();

  _$BudgetListRecord._({this.budget, this.budgetUser, this.reference})
      : super._();

  @override
  BudgetListRecord rebuild(void Function(BudgetListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BudgetListRecordBuilder toBuilder() =>
      new BudgetListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BudgetListRecord &&
        budget == other.budget &&
        budgetUser == other.budgetUser &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, budget.hashCode), budgetUser.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BudgetListRecord')
          ..add('budget', budget)
          ..add('budgetUser', budgetUser)
          ..add('reference', reference))
        .toString();
  }
}

class BudgetListRecordBuilder
    implements Builder<BudgetListRecord, BudgetListRecordBuilder> {
  _$BudgetListRecord _$v;

  ListBuilder<String> _budget;
  ListBuilder<String> get budget =>
      _$this._budget ??= new ListBuilder<String>();
  set budget(ListBuilder<String> budget) => _$this._budget = budget;

  DocumentReference<Object> _budgetUser;
  DocumentReference<Object> get budgetUser => _$this._budgetUser;
  set budgetUser(DocumentReference<Object> budgetUser) =>
      _$this._budgetUser = budgetUser;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  BudgetListRecordBuilder() {
    BudgetListRecord._initializeBuilder(this);
  }

  BudgetListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _budget = $v.budget?.toBuilder();
      _budgetUser = $v.budgetUser;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BudgetListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BudgetListRecord;
  }

  @override
  void update(void Function(BudgetListRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BudgetListRecord build() {
    _$BudgetListRecord _$result;
    try {
      _$result = _$v ??
          new _$BudgetListRecord._(
              budget: _budget?.build(),
              budgetUser: budgetUser,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'budget';
        _budget?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BudgetListRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
