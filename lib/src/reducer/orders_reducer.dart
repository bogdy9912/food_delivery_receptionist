import 'package:built_collection/built_collection.dart';
import 'package:food_delivery_receptionist/src/actions/orders/index.dart';
import 'package:food_delivery_receptionist/src/models/orders/index.dart';
import 'package:redux/redux.dart';

Reducer<OrdersState> ordersReducer = combineReducers(<Reducer<OrdersState>>[
  TypedReducer<OrdersState, GetNewOrdersSuccessful>(_getNewOrdersSuccessful),
  TypedReducer<OrdersState, GetInProcessOrdersSuccessful>(_getInProcessOrdersSuccessful),
  TypedReducer<OrdersState, GetDoneProcessingOrdersSuccessful>(_getDoneProcessingOrdersSuccessful),
  TypedReducer<OrdersState, UpdateStatusOrderSuccessful>(_updateStatusOrderSuccessful),
]);

OrdersState _getNewOrdersSuccessful(OrdersState state, GetNewOrdersSuccessful action) {
  return state.rebuild((OrdersStateBuilder b) => b.pendingOrders = MapBuilder<String, Order>(action.orders));
}

OrdersState _updateStatusOrderSuccessful(OrdersState state, UpdateStatusOrderSuccessful action) {
  return state.rebuild((OrdersStateBuilder b) => b.pendingOrders.remove(action.orderId));
      }

OrdersState _getInProcessOrdersSuccessful(OrdersState state, GetInProcessOrdersSuccessful action) {
  return state.rebuild((OrdersStateBuilder b) => b.inProcessOrders = MapBuilder<String, Order>(action.orders));
}

OrdersState _getDoneProcessingOrdersSuccessful(OrdersState state, GetDoneProcessingOrdersSuccessful action) {
  return state.rebuild((OrdersStateBuilder b) => b.doneProcessingOrders = MapBuilder<String, Order>(action.orders));
}
