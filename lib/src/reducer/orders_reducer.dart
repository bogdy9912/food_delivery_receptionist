import 'package:built_collection/built_collection.dart';
import 'package:food_delivery_receptionist/src/actions/orders/index.dart';
import 'package:food_delivery_receptionist/src/models/orders/index.dart';
import 'package:redux/redux.dart';

Reducer<OrdersState> ordersReducer = combineReducers(<Reducer<OrdersState>>[
  TypedReducer<OrdersState, GetNewOrdersSuccessful>(_getNewOrdersSuccessful),
]);

OrdersState _getNewOrdersSuccessful(OrdersState state, GetNewOrdersSuccessful action) {
  print('reducer: ${action.orders}');
  return state.rebuild((OrdersStateBuilder b) => b.order = MapBuilder<String, Order>(action.orders));
}
