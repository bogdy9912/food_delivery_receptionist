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
        TypedEpic<AppState, GetInProcessOrders$>(_getInProcessOrders),
        TypedEpic<AppState, GetDoneProcessingOrders$>(_getDoneProcessingOrders),
        TypedEpic<AppState, UpdateStatusOrder$>(_updateStatusOrder),
      ]);

  Stream<AppAction> _getNewOrders(Stream<GetNewOrders$> actions, EpicStore<AppState> store) {
    return actions //
        .whereType<GetNewOrders$>()
        .flatMap((GetNewOrders$ action) => Stream<GetNewOrders$>.value(action)
            .flatMap((GetNewOrders$ action) => _api.getNewOrders(companyId: action.companyId))
            .map((List<Order> orders) {
              final Map<String, Order> mapOfResult = <String, Order>{};
              for (final Order order in orders) {
                mapOfResult[order.id] = order;
              }
              return GetNewOrders.successful(mapOfResult);
            })
            .takeUntil(actions.whereType<GetNewOrdersEvent>())
            .onErrorReturnWith((dynamic error) => GetNewOrders.error(error)));
  }

  Stream<AppAction> _getInProcessOrders(Stream<GetInProcessOrders$> actions, EpicStore<AppState> store) {
    return actions //
        .whereType<GetInProcessOrders$>()
        .flatMap((GetInProcessOrders$ action) => Stream<GetInProcessOrders$>.value(action)
            .flatMap((GetInProcessOrders$ action) => _api.getInProcessOrders(companyId: action.companyId))
            .map((List<Order> orders) {
              final Map<String, Order> mapOfResult = <String, Order>{};
              for (final Order order in orders) {
                mapOfResult[order.id] = order;
              }
              return GetInProcessOrders.successful(mapOfResult);
            })
            .takeUntil(actions.whereType<GetNewOrdersEvent>())
            .onErrorReturnWith((dynamic error) => GetInProcessOrders.error(error)));
  }

  Stream<AppAction> _getDoneProcessingOrders(Stream<GetDoneProcessingOrders$> actions, EpicStore<AppState> store) {
    return actions //
        .whereType<GetDoneProcessingOrders$>()
        .flatMap((GetDoneProcessingOrders$ action) => Stream<GetDoneProcessingOrders$>.value(action)
            .flatMap((GetDoneProcessingOrders$ action) => _api.getDoneProcessingOrders(companyId: action.companyId))
            .map((List<Order> orders) {
              final Map<String, Order> mapOfResult = <String, Order>{};
              for (final Order order in orders) {
                mapOfResult[order.id] = order;
              }
              return GetDoneProcessingOrders.successful(mapOfResult);
            })
            .takeUntil(actions.whereType<GetNewOrdersEvent>())
            .onErrorReturnWith((dynamic error) => GetDoneProcessingOrders.error(error)));
  }

  Stream<AppAction> _updateStatusOrder(Stream<UpdateStatusOrder$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((UpdateStatusOrder$ action) => Stream<UpdateStatusOrder$>.value(action)
            .asyncMap((UpdateStatusOrder$ action) => _api.updateStatusOrder(
                companyId: store.state.auth.user!.companyId, orderId: action.orderId, newStatus: action.newStatus))
            .mapTo(UpdateStatusOrder.successful(orderId: action.orderId, newStatus: action.newStatus))
            .onErrorReturnWith((dynamic error) => UpdateStatusOrder.error(error))
            .doOnData(action.response));
  }
}
