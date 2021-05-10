part of orders_actions;

@freezed
abstract class GetNewOrders with _$GetNewOrders implements AppAction {
  const factory GetNewOrders({required String companyId}) = GetNewOrders$;

  const factory GetNewOrders.successful(List<Order> orders) = GetNewOrdersSuccessful;

  const factory GetNewOrders.event() = GetNewOrdersEvent;

  @Implements(ErrorAction)
  const factory GetNewOrders.error(Object error) = GetNewOrdersError;
}
