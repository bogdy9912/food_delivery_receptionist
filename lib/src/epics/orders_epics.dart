import 'package:food_delivery_receptionist/src/actions/index.dart';
import 'package:food_delivery_receptionist/src/actions/orders/index.dart';
import 'package:food_delivery_receptionist/src/data/orders_api.dart';
import 'package:food_delivery_receptionist/src/models/index.dart';
import 'package:food_delivery_receptionist/src/models/orders/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class OrdersEpics {
  const OrdersEpics({required OrdersApi api}) : _api = api;

  final OrdersApi _api;

  Epic<AppState> get epics => combineEpics(<Epic<AppState>>[
        TypedEpic<AppState, GetNewOrders$>(_getNewOrders),
      ]);

  Stream<AppAction> _getNewOrders(Stream<GetNewOrders$> actions, EpicStore<AppState> store) {
    return actions //
        .whereType<GetNewOrders$>()
        .flatMap((GetNewOrders$ action) => Stream<GetNewOrders$>.value(action)
            .flatMap((GetNewOrders$ action) {
              print('epic print1');
              return _api.getNewOrders(companyId: action.companyId);
            })
            .map((List<Order> orders) {
              print('epic print2');
              final Map<String, Order> mapOfResult = <String, Order>{};
              for (final Order order in orders) {
                mapOfResult[order.id] = order;
              }
              print('epics: ${mapOfResult}');
              return GetNewOrders.successful(mapOfResult);
            })
            .takeUntil(actions.whereType<GetNewOrdersEvent>())
            .onErrorReturnWith((dynamic error) {
              print(error);
              return GetNewOrders.error(error);
            }));
  }
}
