part of auth_actions;

@freezed
class Login with _$Login implements AppAction {
  const factory Login({required String email, required String password, required ActionResponse response}) = Login$;

  const factory Login.successful(EmployeeUser user) = LoginSuccessful;

  @Implements(ErrorAction)
  const factory Login.error(Object error) = LoginError;
}
