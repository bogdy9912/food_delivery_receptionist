// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of orders_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetNewOrdersTearOff {
  const _$GetNewOrdersTearOff();

  GetNewOrders$ call({required String companyId}) {
    return GetNewOrders$(
      companyId: companyId,
    );
  }

  GetNewOrdersSuccessful successful(List<Order> orders) {
    return GetNewOrdersSuccessful(
      orders,
    );
  }

  GetNewOrdersEvent event() {
    return const GetNewOrdersEvent();
  }

  GetNewOrdersError error(Object error) {
    return GetNewOrdersError(
      error,
    );
  }
}

/// @nodoc
const $GetNewOrders = _$GetNewOrdersTearOff();

/// @nodoc
mixin _$GetNewOrders {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String companyId) $default, {
    required TResult Function(List<Order> orders) successful,
    required TResult Function() event,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String companyId)? $default, {
    TResult Function(List<Order> orders)? successful,
    TResult Function()? event,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetNewOrders$ value) $default, {
    required TResult Function(GetNewOrdersSuccessful value) successful,
    required TResult Function(GetNewOrdersEvent value) event,
    required TResult Function(GetNewOrdersError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetNewOrders$ value)? $default, {
    TResult Function(GetNewOrdersSuccessful value)? successful,
    TResult Function(GetNewOrdersEvent value)? event,
    TResult Function(GetNewOrdersError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNewOrdersCopyWith<$Res> {
  factory $GetNewOrdersCopyWith(
          GetNewOrders value, $Res Function(GetNewOrders) then) =
      _$GetNewOrdersCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetNewOrdersCopyWithImpl<$Res> implements $GetNewOrdersCopyWith<$Res> {
  _$GetNewOrdersCopyWithImpl(this._value, this._then);

  final GetNewOrders _value;
  // ignore: unused_field
  final $Res Function(GetNewOrders) _then;
}

/// @nodoc
abstract class $GetNewOrders$CopyWith<$Res> {
  factory $GetNewOrders$CopyWith(
          GetNewOrders$ value, $Res Function(GetNewOrders$) then) =
      _$GetNewOrders$CopyWithImpl<$Res>;
  $Res call({String companyId});
}

/// @nodoc
class _$GetNewOrders$CopyWithImpl<$Res> extends _$GetNewOrdersCopyWithImpl<$Res>
    implements $GetNewOrders$CopyWith<$Res> {
  _$GetNewOrders$CopyWithImpl(
      GetNewOrders$ _value, $Res Function(GetNewOrders$) _then)
      : super(_value, (v) => _then(v as GetNewOrders$));

  @override
  GetNewOrders$ get _value => super._value as GetNewOrders$;

  @override
  $Res call({
    Object? companyId = freezed,
  }) {
    return _then(GetNewOrders$(
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$GetNewOrders$ implements GetNewOrders$ {
  const _$GetNewOrders$({required this.companyId});

  @override
  final String companyId;

  @override
  String toString() {
    return 'GetNewOrders(companyId: $companyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetNewOrders$ &&
            (identical(other.companyId, companyId) ||
                const DeepCollectionEquality()
                    .equals(other.companyId, companyId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(companyId);

  @JsonKey(ignore: true)
  @override
  $GetNewOrders$CopyWith<GetNewOrders$> get copyWith =>
      _$GetNewOrders$CopyWithImpl<GetNewOrders$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String companyId) $default, {
    required TResult Function(List<Order> orders) successful,
    required TResult Function() event,
    required TResult Function(Object error) error,
  }) {
    return $default(companyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String companyId)? $default, {
    TResult Function(List<Order> orders)? successful,
    TResult Function()? event,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(companyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetNewOrders$ value) $default, {
    required TResult Function(GetNewOrdersSuccessful value) successful,
    required TResult Function(GetNewOrdersEvent value) event,
    required TResult Function(GetNewOrdersError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetNewOrders$ value)? $default, {
    TResult Function(GetNewOrdersSuccessful value)? successful,
    TResult Function(GetNewOrdersEvent value)? event,
    TResult Function(GetNewOrdersError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetNewOrders$ implements GetNewOrders {
  const factory GetNewOrders$({required String companyId}) = _$GetNewOrders$;

  String get companyId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetNewOrders$CopyWith<GetNewOrders$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNewOrdersSuccessfulCopyWith<$Res> {
  factory $GetNewOrdersSuccessfulCopyWith(GetNewOrdersSuccessful value,
          $Res Function(GetNewOrdersSuccessful) then) =
      _$GetNewOrdersSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Order> orders});
}

/// @nodoc
class _$GetNewOrdersSuccessfulCopyWithImpl<$Res>
    extends _$GetNewOrdersCopyWithImpl<$Res>
    implements $GetNewOrdersSuccessfulCopyWith<$Res> {
  _$GetNewOrdersSuccessfulCopyWithImpl(GetNewOrdersSuccessful _value,
      $Res Function(GetNewOrdersSuccessful) _then)
      : super(_value, (v) => _then(v as GetNewOrdersSuccessful));

  @override
  GetNewOrdersSuccessful get _value => super._value as GetNewOrdersSuccessful;

  @override
  $Res call({
    Object? orders = freezed,
  }) {
    return _then(GetNewOrdersSuccessful(
      orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ));
  }
}

/// @nodoc
class _$GetNewOrdersSuccessful implements GetNewOrdersSuccessful {
  const _$GetNewOrdersSuccessful(this.orders);

  @override
  final List<Order> orders;

  @override
  String toString() {
    return 'GetNewOrders.successful(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetNewOrdersSuccessful &&
            (identical(other.orders, orders) ||
                const DeepCollectionEquality().equals(other.orders, orders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orders);

  @JsonKey(ignore: true)
  @override
  $GetNewOrdersSuccessfulCopyWith<GetNewOrdersSuccessful> get copyWith =>
      _$GetNewOrdersSuccessfulCopyWithImpl<GetNewOrdersSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String companyId) $default, {
    required TResult Function(List<Order> orders) successful,
    required TResult Function() event,
    required TResult Function(Object error) error,
  }) {
    return successful(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String companyId)? $default, {
    TResult Function(List<Order> orders)? successful,
    TResult Function()? event,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetNewOrders$ value) $default, {
    required TResult Function(GetNewOrdersSuccessful value) successful,
    required TResult Function(GetNewOrdersEvent value) event,
    required TResult Function(GetNewOrdersError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetNewOrders$ value)? $default, {
    TResult Function(GetNewOrdersSuccessful value)? successful,
    TResult Function(GetNewOrdersEvent value)? event,
    TResult Function(GetNewOrdersError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetNewOrdersSuccessful implements GetNewOrders {
  const factory GetNewOrdersSuccessful(List<Order> orders) =
      _$GetNewOrdersSuccessful;

  List<Order> get orders => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetNewOrdersSuccessfulCopyWith<GetNewOrdersSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNewOrdersEventCopyWith<$Res> {
  factory $GetNewOrdersEventCopyWith(
          GetNewOrdersEvent value, $Res Function(GetNewOrdersEvent) then) =
      _$GetNewOrdersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetNewOrdersEventCopyWithImpl<$Res>
    extends _$GetNewOrdersCopyWithImpl<$Res>
    implements $GetNewOrdersEventCopyWith<$Res> {
  _$GetNewOrdersEventCopyWithImpl(
      GetNewOrdersEvent _value, $Res Function(GetNewOrdersEvent) _then)
      : super(_value, (v) => _then(v as GetNewOrdersEvent));

  @override
  GetNewOrdersEvent get _value => super._value as GetNewOrdersEvent;
}

/// @nodoc
class _$GetNewOrdersEvent implements GetNewOrdersEvent {
  const _$GetNewOrdersEvent();

  @override
  String toString() {
    return 'GetNewOrders.event()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetNewOrdersEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String companyId) $default, {
    required TResult Function(List<Order> orders) successful,
    required TResult Function() event,
    required TResult Function(Object error) error,
  }) {
    return event();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String companyId)? $default, {
    TResult Function(List<Order> orders)? successful,
    TResult Function()? event,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetNewOrders$ value) $default, {
    required TResult Function(GetNewOrdersSuccessful value) successful,
    required TResult Function(GetNewOrdersEvent value) event,
    required TResult Function(GetNewOrdersError value) error,
  }) {
    return event(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetNewOrders$ value)? $default, {
    TResult Function(GetNewOrdersSuccessful value)? successful,
    TResult Function(GetNewOrdersEvent value)? event,
    TResult Function(GetNewOrdersError value)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(this);
    }
    return orElse();
  }
}

abstract class GetNewOrdersEvent implements GetNewOrders {
  const factory GetNewOrdersEvent() = _$GetNewOrdersEvent;
}

/// @nodoc
abstract class $GetNewOrdersErrorCopyWith<$Res> {
  factory $GetNewOrdersErrorCopyWith(
          GetNewOrdersError value, $Res Function(GetNewOrdersError) then) =
      _$GetNewOrdersErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetNewOrdersErrorCopyWithImpl<$Res>
    extends _$GetNewOrdersCopyWithImpl<$Res>
    implements $GetNewOrdersErrorCopyWith<$Res> {
  _$GetNewOrdersErrorCopyWithImpl(
      GetNewOrdersError _value, $Res Function(GetNewOrdersError) _then)
      : super(_value, (v) => _then(v as GetNewOrdersError));

  @override
  GetNewOrdersError get _value => super._value as GetNewOrdersError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(GetNewOrdersError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetNewOrdersError implements GetNewOrdersError {
  const _$GetNewOrdersError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetNewOrders.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetNewOrdersError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $GetNewOrdersErrorCopyWith<GetNewOrdersError> get copyWith =>
      _$GetNewOrdersErrorCopyWithImpl<GetNewOrdersError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String companyId) $default, {
    required TResult Function(List<Order> orders) successful,
    required TResult Function() event,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String companyId)? $default, {
    TResult Function(List<Order> orders)? successful,
    TResult Function()? event,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetNewOrders$ value) $default, {
    required TResult Function(GetNewOrdersSuccessful value) successful,
    required TResult Function(GetNewOrdersEvent value) event,
    required TResult Function(GetNewOrdersError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetNewOrders$ value)? $default, {
    TResult Function(GetNewOrdersSuccessful value)? successful,
    TResult Function(GetNewOrdersEvent value)? event,
    TResult Function(GetNewOrdersError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetNewOrdersError implements GetNewOrders, ErrorAction {
  const factory GetNewOrdersError(Object error) = _$GetNewOrdersError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetNewOrdersErrorCopyWith<GetNewOrdersError> get copyWith =>
      throw _privateConstructorUsedError;
}
