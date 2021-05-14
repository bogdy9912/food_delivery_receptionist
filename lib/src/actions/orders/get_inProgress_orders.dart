part of orders_actions;

@freezed
class GetInProcessOrders with _$GetInProcessOrders implements AppAction {
  const factory GetInProcessOrders({required String companyId}) = GetInProcessOrders$;

  const factory GetInProcessOrders.successful(Map<String, Order> orders) = GetInProcessOrdersSuccessful;

  const factory GetInProcessOrders.event() = GetInProcessOrdersEvent;

  @Implements(ErrorAction)
  const factory GetInProcessOrders.error(Object error) = GetInProcessOrdersError;
}
