part of orders_actions;

@freezed
class GetNewOrders with _$GetNewOrders implements AppAction {
  const factory GetNewOrders({required String companyId}) = GetNewOrders$;

  const factory GetNewOrders.successful(Map<String, Order> orders) = GetNewOrdersSuccessful;

  const factory GetNewOrders.event() = GetNewOrdersEvent;

  @Implements(ErrorAction)
  const factory GetNewOrders.error(Object error) = GetNewOrdersError;
}
