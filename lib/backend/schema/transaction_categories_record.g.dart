// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_categories_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransactionCategoriesRecord>
    _$transactionCategoriesRecordSerializer =
    new _$TransactionCategoriesRecordSerializer();

class _$TransactionCategoriesRecordSerializer
    implements StructuredSerializer<TransactionCategoriesRecord> {
  @override
  final Iterable<Type> types = const [
    TransactionCategoriesRecord,
    _$TransactionCategoriesRecord
  ];
  @override
  final String wireName = 'TransactionCategoriesRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TransactionCategoriesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.categoryName;
    if (value != null) {
      result
        ..add('categoryName')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  TransactionCategoriesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionCategoriesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'categoryName':
          result.categoryName.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
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

class _$TransactionCategoriesRecord extends TransactionCategoriesRecord {
  @override
  final DocumentReference<Object> user;
  @override
  final BuiltList<String> categoryName;
  @override
  final DocumentReference<Object> reference;

  factory _$TransactionCategoriesRecord(
          [void Function(TransactionCategoriesRecordBuilder) updates]) =>
      (new TransactionCategoriesRecordBuilder()..update(updates)).build();

  _$TransactionCategoriesRecord._(
      {this.user, this.categoryName, this.reference})
      : super._();

  @override
  TransactionCategoriesRecord rebuild(
          void Function(TransactionCategoriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionCategoriesRecordBuilder toBuilder() =>
      new TransactionCategoriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionCategoriesRecord &&
        user == other.user &&
        categoryName == other.categoryName &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, user.hashCode), categoryName.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TransactionCategoriesRecord')
          ..add('user', user)
          ..add('categoryName', categoryName)
          ..add('reference', reference))
        .toString();
  }
}

class TransactionCategoriesRecordBuilder
    implements
        Builder<TransactionCategoriesRecord,
            TransactionCategoriesRecordBuilder> {
  _$TransactionCategoriesRecord _$v;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  ListBuilder<String> _categoryName;
  ListBuilder<String> get categoryName =>
      _$this._categoryName ??= new ListBuilder<String>();
  set categoryName(ListBuilder<String> categoryName) =>
      _$this._categoryName = categoryName;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  TransactionCategoriesRecordBuilder() {
    TransactionCategoriesRecord._initializeBuilder(this);
  }

  TransactionCategoriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _categoryName = $v.categoryName?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionCategoriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionCategoriesRecord;
  }

  @override
  void update(void Function(TransactionCategoriesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TransactionCategoriesRecord build() {
    _$TransactionCategoriesRecord _$result;
    try {
      _$result = _$v ??
          new _$TransactionCategoriesRecord._(
              user: user,
              categoryName: _categoryName?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'categoryName';
        _categoryName?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TransactionCategoriesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
