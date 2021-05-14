part of orders_actions;

@freezed
class GetDoneProcessingOrders with _$GetDoneProcessingOrders implements AppAction {
  const factory GetDoneProcessingOrders({required String companyId}) = GetDoneProcessingOrders$;

  const factory GetDoneProcessingOrders.successful(Map<String, Order> orders) = GetDoneProcessingOrdersSuccessful;

  const factory GetDoneProcessingOrders.event() = GetDoneProcessingOrdersEvent;

  @Implements(ErrorAction)
  const factory GetDoneProcessingOrders.error(Object error) = GetDoneProcessingOrdersError;
}
