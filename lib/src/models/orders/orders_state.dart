part of orders_models;

abstract class OrdersState implements Built<OrdersState, OrdersStateBuilder> {
  factory OrdersState([void Function(OrdersStateBuilder b)? updates]) = _$OrdersState;
  factory OrdersState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  OrdersState._();

  BuiltMap<String, Order> get pendingOrders;
  BuiltMap<String, Order> get inProcessOrders;
  BuiltMap<String, Order> get doneProcessingOrders;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<OrdersState> get serializer => _$ordersStateSerializer;
}