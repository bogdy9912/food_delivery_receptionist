import 'package:built_collection/built_collection.dart';
import 'package:food_delivery_receptionist/src/actions/orders/index.dart';
import 'package:food_delivery_receptionist/src/models/orders/index.dart';
import 'package:redux/redux.dart';

Reducer<OrdersState> ordersReducer = combineReducers(<Reducer<OrdersState>>[
  TypedReducer<OrdersState, GetNewOrdersSuccessful>(_getNewOrdersSuccessful),
  TypedReducer<OrdersState, UpdateStatusOrderSuccessful>(_updateStatusOrderSuccessful),
]);

OrdersState _getNewOrdersSuccessful(OrdersState state, GetNewOrdersSuccessful action) {
  return state.rebuild((OrdersStateBuilder b) => b.order = MapBuilder<String, Order>(action.orders));
}

OrdersState _updateStatusOrderSuccessful(OrdersState state, UpdateStatusOrderSuccessful action) {
  return state.rebuild((OrdersStateBuilder b) => b.order.update((MapBuilder<String, Order> e) =>
      e[action.orderId]!.rebuild((OrderBuilder element) => element.status = action.newStatus)));
}
