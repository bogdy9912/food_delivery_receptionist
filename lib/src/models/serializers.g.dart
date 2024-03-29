// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(AddressPoint.serializer)
      ..add(AppState.serializer)
      ..add(AuthState.serializer)
      ..add(CartItem.serializer)
      ..add(EmployeeUser.serializer)
      ..add(Order.serializer)
      ..add(OrdersState.serializer)
      ..add(PaymentMethod.serializer)
      ..add(Role.serializer)
      ..add(StatusOrder.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CartItem)]),
          () => new ListBuilder<CartItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Role)]),
          () => new ListBuilder<Role>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(Order)]),
          () => new MapBuilder<String, Order>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(Order)]),
          () => new MapBuilder<String, Order>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(Order)]),
          () => new MapBuilder<String, Order>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
