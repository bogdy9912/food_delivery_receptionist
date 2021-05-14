part of orders_actions;

@freezed
class UpdateStatusOrder with _$UpdateStatusOrder implements AppAction {
  const factory UpdateStatusOrder(
      {required String orderId, required StatusOrder newStatus, required ActionResponse response}) = UpdateStatusOrder$;

  const factory UpdateStatusOrder.successful({required String orderId, required StatusOrder newStatus}) =
      UpdateStatusOrderSuccessful;

  @Implements(ErrorAction)
  const factory UpdateStatusOrder.error(Object error) = UpdateStatusOrderError;
}
