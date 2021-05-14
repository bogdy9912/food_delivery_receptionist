// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Role _$receptionist = const Role._('receptionist');
const Role _$driver = const Role._('driver');

Role _$valueOf(String name) {
  switch (name) {
    case 'receptionist':
      return _$receptionist;
    case 'driver':
      return _$driver;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Role> _$values = new BuiltSet<Role>(const <Role>[
  _$receptionist,
  _$driver,
]);

Serializer<EmployeeUser> _$employeeUserSerializer =
    new _$EmployeeUserSerializer();
Serializer<AuthState> _$authStateSerializer = new _$AuthStateSerializer();
Serializer<Role> _$roleSerializer = new _$RoleSerializer();

class _$EmployeeUserSerializer implements StructuredSerializer<EmployeeUser> {
  @override
  final Iterable<Type> types = const [EmployeeUser, _$EmployeeUser];
  @override
  final String wireName = 'EmployeeUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, EmployeeUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'adminId',
      serializers.serialize(object.adminId,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'companyId',
      serializers.serialize(object.companyId,
          specifiedType: const FullType(String)),
      'roles',
      serializers.serialize(object.roles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Role)])),
    ];

    return result;
  }

  @override
  EmployeeUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmployeeUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adminId':
          result.adminId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'companyId':
          result.companyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'roles':
          result.roles.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Role)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
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
    final result = <Object?>[];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(EmployeeUser)));
    }
    return result;
  }

  @override
  AuthState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(EmployeeUser))! as EmployeeUser);
          break;
      }
    }

    return result.build();
  }
}

class _$RoleSerializer implements PrimitiveSerializer<Role> {
  @override
  final Iterable<Type> types = const <Type>[Role];
  @override
  final String wireName = 'Role';

  @override
  Object serialize(Serializers serializers, Role object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  Role deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Role.valueOf(serialized as String);
}

class _$EmployeeUser extends EmployeeUser {
  @override
  final String uid;
  @override
  final String adminId;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String companyId;
  @override
  final BuiltList<Role> roles;

  factory _$EmployeeUser([void Function(EmployeeUserBuilder)? updates]) =>
      (new EmployeeUserBuilder()..update(updates)).build();

  _$EmployeeUser._(
      {required this.uid,
      required this.adminId,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.companyId,
      required this.roles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(uid, 'EmployeeUser', 'uid');
    BuiltValueNullFieldError.checkNotNull(adminId, 'EmployeeUser', 'adminId');
    BuiltValueNullFieldError.checkNotNull(email, 'EmployeeUser', 'email');
    BuiltValueNullFieldError.checkNotNull(
        firstName, 'EmployeeUser', 'firstName');
    BuiltValueNullFieldError.checkNotNull(lastName, 'EmployeeUser', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        companyId, 'EmployeeUser', 'companyId');
    BuiltValueNullFieldError.checkNotNull(roles, 'EmployeeUser', 'roles');
  }

  @override
  EmployeeUser rebuild(void Function(EmployeeUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmployeeUserBuilder toBuilder() => new EmployeeUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmployeeUser &&
        uid == other.uid &&
        adminId == other.adminId &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        companyId == other.companyId &&
        roles == other.roles;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, uid.hashCode), adminId.hashCode),
                        email.hashCode),
                    firstName.hashCode),
                lastName.hashCode),
            companyId.hashCode),
        roles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EmployeeUser')
          ..add('uid', uid)
          ..add('adminId', adminId)
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('companyId', companyId)
          ..add('roles', roles))
        .toString();
  }
}

class EmployeeUserBuilder
    implements Builder<EmployeeUser, EmployeeUserBuilder> {
  _$EmployeeUser? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _adminId;
  String? get adminId => _$this._adminId;
  set adminId(String? adminId) => _$this._adminId = adminId;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _companyId;
  String? get companyId => _$this._companyId;
  set companyId(String? companyId) => _$this._companyId = companyId;

  ListBuilder<Role>? _roles;
  ListBuilder<Role> get roles => _$this._roles ??= new ListBuilder<Role>();
  set roles(ListBuilder<Role>? roles) => _$this._roles = roles;

  EmployeeUserBuilder();

  EmployeeUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _adminId = $v.adminId;
      _email = $v.email;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _companyId = $v.companyId;
      _roles = $v.roles.toBuilder();
      _$v = null;
    }
    return this;
  }

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
    _$EmployeeUser _$result;
    try {
      _$result = _$v ??
          new _$EmployeeUser._(
              uid: BuiltValueNullFieldError.checkNotNull(
                  uid, 'EmployeeUser', 'uid'),
              adminId: BuiltValueNullFieldError.checkNotNull(
                  adminId, 'EmployeeUser', 'adminId'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, 'EmployeeUser', 'email'),
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName, 'EmployeeUser', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName, 'EmployeeUser', 'lastName'),
              companyId: BuiltValueNullFieldError.checkNotNull(
                  companyId, 'EmployeeUser', 'companyId'),
              roles: roles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roles';
        roles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EmployeeUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AuthState extends AuthState {
  @override
  final EmployeeUser? user;

  factory _$AuthState([void Function(AuthStateBuilder)? updates]) =>
      (new AuthStateBuilder()..update(updates)).build();

  _$AuthState._({this.user}) : super._();

  @override
  AuthState rebuild(void Function(AuthStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthStateBuilder toBuilder() => new AuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthState && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthState')..add('user', user))
        .toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState? _$v;

  EmployeeUserBuilder? _user;
  EmployeeUserBuilder get user => _$this._user ??= new EmployeeUserBuilder();
  set user(EmployeeUserBuilder? user) => _$this._user = user;

  AuthStateBuilder();

  AuthStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

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
    _$AuthState _$result;
    try {
      _$result = _$v ?? new _$AuthState._(user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
