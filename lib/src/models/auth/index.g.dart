// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EmployeeUser> _$employeeUserSerializer =
    new _$EmployeeUserSerializer();
Serializer<AuthState> _$authStateSerializer = new _$AuthStateSerializer();

class _$EmployeeUserSerializer implements StructuredSerializer<EmployeeUser> {
  @override
  final Iterable<Type> types = const [EmployeeUser, _$EmployeeUser];
  @override
  final String wireName = 'EmployeeUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, EmployeeUser object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  EmployeeUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new EmployeeUserBuilder().build();
  }
}

class _$AuthStateSerializer implements StructuredSerializer<AuthState> {
  @override
  final Iterable<Type> types = const [AuthState, _$AuthState];
  @override
  final String wireName = 'AuthState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AuthState object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  AuthState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new AuthStateBuilder().build();
  }
}

class _$EmployeeUser extends EmployeeUser {
  factory _$EmployeeUser([void Function(EmployeeUserBuilder)? updates]) =>
      (new EmployeeUserBuilder()..update(updates)).build();

  _$EmployeeUser._() : super._();

  @override
  EmployeeUser rebuild(void Function(EmployeeUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmployeeUserBuilder toBuilder() => new EmployeeUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmployeeUser;
  }

  @override
  int get hashCode {
    return 515112656;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('EmployeeUser').toString();
  }
}

class EmployeeUserBuilder
    implements Builder<EmployeeUser, EmployeeUserBuilder> {
  _$EmployeeUser? _$v;

  EmployeeUserBuilder();

  @override
  void replace(EmployeeUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmployeeUser;
  }

  @override
  void update(void Function(EmployeeUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EmployeeUser build() {
    final _$result = _$v ?? new _$EmployeeUser._();
    replace(_$result);
    return _$result;
  }
}

class _$AuthState extends AuthState {
  factory _$AuthState([void Function(AuthStateBuilder)? updates]) =>
      (new AuthStateBuilder()..update(updates)).build();

  _$AuthState._() : super._();

  @override
  AuthState rebuild(void Function(AuthStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthStateBuilder toBuilder() => new AuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthState;
  }

  @override
  int get hashCode {
    return 76778048;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('AuthState').toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState? _$v;

  AuthStateBuilder();

  @override
  void replace(AuthState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthState;
  }

  @override
  void update(void Function(AuthStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthState build() {
    final _$result = _$v ?? new _$AuthState._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
